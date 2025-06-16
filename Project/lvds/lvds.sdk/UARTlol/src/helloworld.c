#include "xgpio.h"
#include "xparameters.h"
#include "xil_printf.h"

int main() {
    XGpio gpio;
    XGpio_Initialize(&gpio, XPAR_AXI_GPIO_0_DEVICE_ID);
    XGpio_SetDataDirection(&gpio, 1, 0xFF);  // all inputs

    xil_printf("Start reading delay\r\n");

    while (1) {
        u32 val = XGpio_DiscreteRead(&gpio, 1);
        xil_printf("GPIO = %d\n", XGpio_DiscreteRead(&gpio, 1));

        xil_printf("Delay = %d\r\n", val);
        for (volatile int i = 0; i < 1000000; ++i);  // crude delay
    }
}
