/*
 * main.c
 *
 *  Created on: 16.06.2025
 *      Author: grzen
 */


#include "xgpio.h"
#include "xparameters.h"
#include "xil_printf.h"

int main() {
    XGpio gpio;
    u32 value;

    xil_printf("Start UART + GPIO\r\n");

    XGpio_Initialize(&gpio, XPAR_AXI_GPIO_0_DEVICE_ID);
    XGpio_SetDataDirection(&gpio, 1, 0xFF); // kana³ 1 jako input

    while (1) {
        value = XGpio_DiscreteRead(&gpio, 1);
        xil_printf("GPIO: 0x%02X\r\n", value);
        for (volatile int i = 0; i < 10000000; i++); // delay
    }

    return 0;
}
