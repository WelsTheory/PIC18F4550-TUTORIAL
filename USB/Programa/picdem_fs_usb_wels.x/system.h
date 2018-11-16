/*******************************************************************************
Copyright 2016 Microchip Technology Inc. (www.microchip.com)

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

To request to license the code under the MLA license (www.microchip.com/mla_license), 
please contact mla_licensing@microchip.com
*******************************************************************************/

#ifndef SYSTEM_H
#define SYSTEM_H

#include <xc.h>
#include <stdbool.h>
#include <stdint.h>
#include "buttons.h"
#include "leds.h"
#include "adc.h"

#include "io_mapping.h"
//#include "fixed_address_memory.h"

#define PROGRAMA void

//Buffer out
#define HID_CUSTOM_OUT_DATA_BUFFER_ADDRESS 0x500
#define HID_CUSTOM_IN_DATA_BUFFER_ADDRESS 0x540

/*** System States **************************************************/
typedef enum
{
    USB_ESTADO_START,
    USB_ESTADO_SUSPEND,
    USB_ESTADO_RESUME
} USB_ESTADO;

void USB_Init(USB_ESTADO estado );


//void SYSTEM_Tasks(void);
#define SYSTEM_Tasks()

#endif //SYSTEM_H
