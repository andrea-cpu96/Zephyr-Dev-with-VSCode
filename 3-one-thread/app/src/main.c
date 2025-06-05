/*
 * Copyright (c) 2016 Intel Corporation
 *
 * SPDX-License-Identifier: Apache-2.0
 */

/* NOTE
 * With stm32 you have to enable the DMA to use the whole buffer
 */

/* System */
#include <zephyr/kernel.h>
#include <zephyr/devicetree.h>
#include <zephyr/device.h>
/* Debug support */
#include <zephyr/sys/printk.h>
/* Zephyr peripheral drivers */
#include <zephyr/drivers/gpio.h>
/* Custom peripheral drivers */
#include "adc_drv.h"

/* ADC definitions */
/* Channel */
#define ADC_CHANNEL 0
#define ADC_RESOLUTION 12
#define ADC_BUFFER_SIZE 512
/* Thread */
#define ADC_STACK_SIZE 1024
#define ADC_PRIORITY 7

/* Thread data structures */
K_THREAD_STACK_DEFINE(adc_stack, ADC_STACK_SIZE);
struct k_thread adc_tcb;

/* ADC data structures */
const struct device *adc = DEVICE_DT_GET(DT_NODELABEL(adc1));
struct k_poll_signal adc_sig;
struct k_poll_event adc_event = K_POLL_EVENT_INITIALIZER(K_POLL_TYPE_SIGNAL,
														 K_POLL_MODE_NOTIFY_ONLY,
														 &adc_sig);
adc_handler_t hadc;
static int16_t adc_sample_buffer[ADC_BUFFER_SIZE];
int16_t adc_data;

static int adc_init(void);
static int periph_config(void);

/**
 * @brief adc_thread
 */
void adc_thread(void *p1, void *p2, void *p3)
{
	while (1)
	{
		adc_drv_read(&hadc);
		k_poll(&adc_event, 1, K_FOREVER);
		k_poll_signal_reset(&adc_sig);
		adc_data = (int16_t)(1000 * (3.6 * (adc_sample_buffer[0] / 4096.0)));
		printk("ADC; %d\r\n", adc_data);
		k_sleep(K_MSEC(1));
	}
}

int main(void)
{
	if (periph_config() < 0)
	{
		printk("Error\n");
		return 1;
	}

	k_thread_create(&adc_tcb, adc_stack, ADC_STACK_SIZE,
					adc_thread,
					NULL, NULL, NULL,
					ADC_PRIORITY, 0, K_NO_WAIT);

	k_sleep(K_FOREVER);

	while (1)
	{
	}

	return 1;
}

static int adc_init(void)
{
	k_poll_signal_init(&adc_sig);

	hadc.adc_dev = adc;
	hadc.mode = ADC_DRV_ASYNC;
	hadc.channel_cfg.gain = ADC_GAIN_1_6;
	hadc.channel_cfg.acquisition_time = ADC_ACQ_TIME(ADC_ACQ_TIME_MICROSECONDS, 3);
	hadc.channel_cfg.reference = ADC_REF_INTERNAL;
	hadc.channel_cfg.channel_id = ADC_CHANNEL;

	hadc.sequence.channels = BIT(ADC_CHANNEL);
	hadc.sequence.buffer = adc_sample_buffer; // With stm32 you have to enable the DMA to use the whole buffer
	hadc.sequence.buffer_size = sizeof(adc_sample_buffer);
	hadc.sequence.resolution = ADC_RESOLUTION;

	hadc.opt.adc_sig = &adc_sig;

	return adc_drv_config(&hadc);
}

static int periph_config(void)
{
	if (adc_init() < 0)
	{
		printk("Error: ADC device not ready\r\n");
		return -1;
	}

	return 0;
}