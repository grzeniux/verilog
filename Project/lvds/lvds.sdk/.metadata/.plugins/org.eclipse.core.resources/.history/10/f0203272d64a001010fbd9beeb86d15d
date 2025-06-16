#include "xgpio.h"

XGpio gpio;

int main() {
    xil_printf("Start ZYNQ UART + GPIO\r\n");

    XGpio_Initialize(&gpio, XPAR_AXI_GPIO_0_DEVICE_ID);
    XGpio_SetDataDirection(&gpio, 1, 0xFF); // GPIO as input

    while (1) {
        u32 value = XGpio_DiscreteRead(&gpio, 1);
        xil_printf("GPIO value = %d\r\n", value);
        for (volatile int i = 0; i < 1000000; ++i); // delay
    }
}
