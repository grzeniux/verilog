#include "xparameters.h"
#include "xgpio.h"
#include "xil_printf.h"

XGpio Gpio;

int main() {
    u32 value;

    xil_printf("Start UART + GPIO\r\n");

    // Inicjalizacja GPIO (ID z xparameters.h)
    XGpio_Initialize(&Gpio, XPAR_AXI_GPIO_0_DEVICE_ID);
    XGpio_SetDataDirection(&Gpio, 1, 0xFF); // All inputs

    while (1) {
        value = XGpio_DiscreteRead(&Gpio, 1);
        xil_printf("Delay: %02X\r\n", value);
        for (volatile int i = 0; i < 10000000; i++); // Delay
    }

    return 0;
}
