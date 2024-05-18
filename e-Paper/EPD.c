/**
  ******************************************************************************
  * @file           : EPD.c
  * @brief          : e-paper display program
  * @author         : subhajit.ghosh@tweaklogic.com
  * @info           : This code is derived from EPD_2IN9_V2_test.c by Waveshare
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2024 Tweaklogic.
  * All rights reserved.
  *
  * Permission is hereby granted, free of charge, to any person obtaining a copy
  * of this software and associated documnetation files (the "Software"), to deal
  * in the Software without restriction, including without limitation the rights
  * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
  * copies of the Software, and to permit persons to  whom the Software is
  * furished to do so, subject to the following conditions:

  * The above copyright notice and this permission notice shall be included in
  * all copies or substantial portions of the Software.

  * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
  * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
  * FITNESS OR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
  * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
  * LIABILITY WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
  * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
  * THE SOFTWARE.
  *
  ******************************************************************************
  */
#include <EPD.h>
#include <fonts.h>
#include "EPD_2in9_V2.h"

int EPD(uint8_t *str, uint16_t x, uint16_t y, uint8_t font_num)
{
    sFONT font;
    if(DEV_Module_Init()!=0) {
        return -1;
    }

    EPD_2IN9_V2_Init();
    EPD_2IN9_V2_Clear();
    DEV_Delay_ms(1000);

    switch (font_num) {
    case 1:
    	font = Font8;
    break;
    case 2:
    	font = Font12;
    break;
    case 3:
    	font = Font16;
    break;
    case 4:
    	font = Font20;
    break;
    case 5:
    	font = Font24;
    break;
    default:
    	font = Font16;
    }

    UBYTE *BlackImage;
    UWORD Imagesize = ((EPD_2IN9_V2_WIDTH % 8 == 0)? (EPD_2IN9_V2_WIDTH / 8 ): (EPD_2IN9_V2_WIDTH / 8 + 1)) * EPD_2IN9_V2_HEIGHT;
    if((BlackImage = (UBYTE *)malloc(Imagesize)) == NULL) {
        return -1;
    }
    Paint_NewImage(BlackImage, EPD_2IN9_V2_WIDTH, EPD_2IN9_V2_HEIGHT, 90, WHITE);
    Paint_Clear(WHITE);

    EPD_2IN9_V2_Init_Fast();
    Paint_NewImage(BlackImage, EPD_2IN9_V2_WIDTH, EPD_2IN9_V2_HEIGHT, 90, WHITE);
    Paint_SetRotate(ROTATE_270);
    Paint_SelectImage(BlackImage);
    Paint_Clear(WHITE);
    Paint_DrawString_EN(x, y, str, &font, WHITE, BLACK);
    EPD_2IN9_V2_Display(BlackImage);
    DEV_Delay_ms(3000);

    return 0;
}

int EPD_Clear()
{
    if(DEV_Module_Init()!=0) {
        return -1;
    }

    EPD_2IN9_V2_Init();
    EPD_2IN9_V2_Clear();
    DEV_Delay_ms(1000);

    UBYTE *BlackImage;
    UWORD Imagesize = ((EPD_2IN9_V2_WIDTH % 8 == 0)? (EPD_2IN9_V2_WIDTH / 8 ): (EPD_2IN9_V2_WIDTH / 8 + 1)) * EPD_2IN9_V2_HEIGHT;
    if((BlackImage = (UBYTE *)malloc(Imagesize)) == NULL) {
        return -1;
    }
    Paint_NewImage(BlackImage, EPD_2IN9_V2_WIDTH, EPD_2IN9_V2_HEIGHT, 90, WHITE);
    Paint_Clear(WHITE);

    EPD_2IN9_V2_Init_Fast();
    Paint_NewImage(BlackImage, EPD_2IN9_V2_WIDTH, EPD_2IN9_V2_HEIGHT, 90, WHITE);
    Paint_SetRotate(ROTATE_270);
    Paint_SelectImage(BlackImage);
    Paint_Clear(WHITE);
    EPD_2IN9_V2_Display(BlackImage);

    return 0;
}

