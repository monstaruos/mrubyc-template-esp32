#include <M5Stack.h>

#ifdef __cplusplus
extern "C" {
#endif

#include "mrbc_lcd.h"

#if 0
// M5.lcd.setBrightness(uint8_t brightness);
static mrbc_value
mrbc_lcd_set_brightness(mrbc_state *mrbc, mrbc_value self)
{
  mrbc_int b;
  mrbc_get_args(mrbc, "i", &b);
  M5.Lcd.setBrightness(b);
  return self;
}

// M5.Lcd.drawPixel(int16_t x, int16_t y, uint16_t color);
static mrbc_value
mrbc_lcd_pixel(mrbc_state *mrbc, mrbc_value self)
{
  mrbc_int x, y, c;
  mrbc_get_args(mrbc, "iii", &x, &y, &c);
  M5.Lcd.drawPixel(x, y, c);
  return self;
}

// M5.Lcd.drawLine(int16_t x0, int16_t y0, int16_t x1, int16_t y1, uint16_t color);
static mrbc_value
mrbc_lcd_line(mrbc_state *mrbc, mrbc_value self)
{
  mrbc_int x1, y1, x2, y2, c;
  mrbc_get_args(mrbc, "iiiii", &x1, &y1, &x2, &y2, &c);
  M5.Lcd.drawLine(x1, y1, x2, y2, c);
  return self;
}

// M5.Lcd.drawRect(int16_t x, int16_t y, int16_t w, int16_t h, uint16_t color);
static mrbc_value
mrbc_lcd_draw_rect(mrbc_state *mrbc, mrbc_value self)
{
  mrbc_int x, y, w, h, c;
  mrbc_get_args(mrbc, "iiiii", &x, &y, &w, &h, &c);
  M5.Lcd.drawRect(x, y, w, h, c);
  return self;
}
#endif

// M5.Lcd.fillRect(int16_t x, int16_t y, int16_t w, int16_t h, uint16_t color);
void
mrbc_lcd_fill_rect(mrb_vm* vm, mrb_value* v, int argc)
{
  int x, y, w, h, c;
  x = GET_INT_ARG(1);
  y = GET_INT_ARG(2);
  w = GET_INT_ARG(3);
  h = GET_INT_ARG(4);
  c = GET_INT_ARG(5);
  M5.Lcd.fillRect(x, y, w, h, c);
}

#if 0
// M5.Lcd.fillScreen(uint16_t color);
static mrbc_value
mrbc_lcd_fill_screen(mrbc_state *mrbc, mrbc_value self)
{
  mrbc_int c;
  mrbc_get_args(mrbc, "i", &c);
  M5.Lcd.fillScreen(c);
  return self;
}

static mrbc_value
mrbc_lcd_clear(mrbc_state *mrbc, mrbc_value self)
{
  M5.Lcd.fillScreen(0);
  M5.Lcd.setCursor(0, 0);
  return self;
}

// M5.Lcd.drawCircle(int16_t x0, int16_t y0, int16_t r, uint16_t color);
static mrbc_value
mrbc_lcd_circle(mrbc_state *mrbc, mrbc_value self)
{
  mrbc_int x, y, r, c;
  mrbc_get_args(mrbc, "iiii", &x, &y, &r, &c);
  M5.Lcd.drawCircle(x, y, r, c);
  return self;
}

// M5.Lcd.fillCircle(int16_t x0, int16_t y0, int16_t r, uint16_t color);
static mrbc_value
mrbc_lcd_fill_circle(mrbc_state *mrbc, mrbc_value self)
{
  mrbc_int x, y, r, c;
  mrbc_get_args(mrbc, "iiii", &x, &y, &r, &c);
  M5.Lcd.fillCircle(x, y, r, c);
  return self;
}

// M5.Lcd.drawTriangle(int16_t x0, int16_t y0, int16_t x1, int16_t y1, int16_t x2, int16_t y2, uint16_t color);
static mrbc_value
mrbc_lcd_triangle(mrbc_state *mrbc, mrbc_value self)
{
  mrbc_int x1, y1, x2, y2, x3, y3, c;
  mrbc_get_args(mrbc, "iiiiiii", &x1, &y1, &x2, &y2, &x3, &y3, &c);
  M5.Lcd.drawTriangle(x1, y1, x2, y2, x3, y3, c);
  return self;
}
#endif

// M5.Lcd.fillTriangle(int16_t x0, int16_t y0, int16_t x1, int16_t y1, int16_t x2, int16_t y2, uint16_t color);
void
mrbc_lcd_fill_triangle(mrb_vm* vm, mrb_value* v, int argc) 
{
  int x1, y1, x2, y2, x3, y3, c;
  x1 = GET_INT_ARG(1);
  y1 = GET_INT_ARG(2);
  x2 = GET_INT_ARG(3);
  y2 = GET_INT_ARG(4);
  x3 = GET_INT_ARG(5);
  y3 = GET_INT_ARG(6);
  c  = GET_INT_ARG(7);
  M5.Lcd.fillTriangle(x1, y1, x2, y2, x3, y3, c);
}

#if 0
// M5.Lcd.drawRoundRect(int16_t x0, int16_t y0, int16_t w, int16_t h, int16_t radius, uint16_t color);
static mrbc_value
mrbc_lcd_round_rect(mrbc_state *mrbc, mrbc_value self)
{
  mrbc_int x, y, w, h, r, c;
  mrbc_get_args(mrbc, "iiiiii", &x, &y, &w, &h, &r, &c);
  M5.Lcd.drawRoundRect(x, y, w, h, r, c);
  return self;
}

// M5.Lcd.fillRoundRect(int16_t x0, int16_t y0, int16_t w, int16_t h, int16_t radius, uint16_t color);
static mrbc_value
mrbc_lcd_fill_round_rect(mrbc_state *mrbc, mrbc_value self)
{
  mrbc_int x, y, w, h, r, c;
  mrbc_get_args(mrbc, "iiiiii", &x, &y, &w, &h, &r, &c);
  M5.Lcd.fillRoundRect(x, y, w, h, r, c);
  return self;
}

// M5.Lcd.drawBitmap(int16_t x0, int16_t y0, int16_t w, int16_t h, const uint16_t *data);
static mrbc_value
mrbc_lcd_draw_bitmap(mrbc_state *mrbc, mrbc_value self)
{
  mrbc_int x, y, w, h;
  mrbc_value bmp;
  mrbc_get_args(mrbc, "iiiiS", &x, &y, &w, &h, &bmp);
  M5.Lcd.drawBitmap(x, y, w, h, (const uint16_t*)RSTRING_PTR(bmp));
  return self;
}

// M5.Lcd.drawChar(uint16_t x, uint16_t y, char c, uint16_t color, uint16_t bg, uint8_t size);
static mrbc_value
mrbc_lcd_draw_char(mrbc_state *mrbc, mrbc_value self)
{
  mrbc_int x, y, chr, fc, bc, sz;
  mrbc_get_args(mrbc, "iiiiii", &x, &y, &chr, &fc, &bc, &sz);
  M5.Lcd.drawChar(x, y, chr, fc, bc, sz);
  return self;
}

///

static mrbc_value
mrbc_lcd_set_cursor(mrbc_state *mrbc, mrbc_value self)
{
  mrbc_int x, y;
  mrbc_get_args(mrbc, "ii", &x, &y);
  M5.Lcd.setCursor(x, y);
  return mrbc_nil_value();
}

static mrbc_value
mrbc_lcd_draw_string(mrbc_state *mrbc, mrbc_value self)
{
  mrbc_int x, y, c;
  char *s;
  mrbc_get_args(mrbc, "ziii", &s, &x, &y, &c);
  M5.Lcd.drawCentreString(s, x, y, c);
  return self;
}

static mrbc_value
mrbc_lcd_set_text_size(mrbc_state *mrbc, mrbc_value self)
{
  mrbc_int s;
  mrbc_get_args(mrbc, "i", &s);
  M5.Lcd.setTextSize((uint8_t)s);
  return mrbc_nil_value();
}

static mrbc_value
mrbc_lcd_set_text_wrap(mrbc_state *mrbc, mrbc_value self)
{
  mrbc_bool wx, wy;
  mrbc_get_args(mrbc, "bb", &wx, &wy);
  M5.Lcd.setTextWrap(wx, wy);
  return self;
}

static mrbc_value
mrbc_lcd_set_text_color(mrbc_state *mrbc, mrbc_value self)
{
  mrbc_int fc;
  mrbc_get_args(mrbc, "i", &fc);
  M5.Lcd.setTextColor((uint16_t)fc);
  return mrbc_nil_value();
}


///

// Set rotation for text drawing.
// 1..4: left->right
//  1: top->bottom
//  2: right->left
//  3: bottom->top
//  4: left->right
// 5..8: right->left
//  5: bottom->top
//  6: left->right
//  7: top->bottom
//  8: right->left
static mrbc_value
mrbc_lcd_rotate(mrbc_state *mrbc, mrbc_value self)
{
  mrbc_int r;
  mrbc_get_args(mrbc, "i", &r);
  M5.Lcd.setRotation(r);
  return self;
}

// Get cursor X position (pixel unit)
static mrbc_value
mrbc_lcd_cx(mrbc_state *mrbc, mrbc_value self)
{
  return mrbc_fixnum_value(M5.Lcd.getCursorX());
}

// Get cursor Y position (pixel unit)
static mrbc_value
mrbc_lcd_cy(mrbc_state *mrbc, mrbc_value self)
{
  return mrbc_fixnum_value(M5.Lcd.getCursorY());
}

/// Scroll
// Lcd.readRect() not work. (SPI MISO not connected.)
// #define LINES 8
// static mrbc_value
// mrbc_lcd_rollup(mrbc_state *mrbc, mrbc_value self)
// {
//   static uint16_t img[320*LINES];
//   int y;
//   for (y=0; y<240-LINES; y+=LINES) {
//     M5.Lcd.readRect(0, y+LINES, 320, LINES, img);
//     M5.Lcd.pushImage(0, y, 320, LINES, (const uint16_t *)img);
//   }
//   return self;
// }
#endif

void
mrbc_mruby_lcd_m5stack_gem_init(struct VM *vm)
{
  M5.begin();  // THIS IS TOO BAD.

  mrbc_class_string = mrbc_define_class(vm, "LCD", mrbc_class_object);

#if 0
  // M5.lcd.setBrightness(uint8_t brightness);
  mrbc_define_class_method(mrbc, lcd, "brightness=", mrbc_lcd_set_brightness, MRB_ARGS_REQ(1));

  // M5.Lcd.drawPixel(int16_t x, int16_t y, uint16_t color);
  mrbc_define_class_method(mrbc, lcd, "pixel", mrbc_lcd_pixel, MRB_ARGS_REQ(3));

  // M5.Lcd.drawLine(int16_t x0, int16_t y0, int16_t x1, int16_t y1, uint16_t color);
  mrbc_define_class_method(mrbc, lcd, "line", mrbc_lcd_line, MRB_ARGS_REQ(5));

  // M5.Lcd.drawRect(int16_t x, int16_t y, int16_t w, int16_t h, uint16_t color);
  mrbc_define_class_method(mrbc, lcd, "draw_rect", mrbc_lcd_draw_rect, MRB_ARGS_REQ(5));
#endif

  // M5.Lcd.fillRect(int16_t x, int16_t y, int16_t w, int16_t h, uint16_t color);
  mrbc_define_method(vm, mrbc_class_string, "fill_rect", mrbc_lcd_fill_rect);

#if 0
  // M5.Lcd.fillScreen(uint16_t color);
  mrbc_define_class_method(mrbc, lcd, "fill_screen", mrbc_lcd_fill_screen, MRB_ARGS_REQ(1));
  mrbc_define_class_method(mrbc, lcd, "clear", mrbc_lcd_clear, MRB_ARGS_NONE());

  // M5.Lcd.drawCircle(int16_t x0, int16_t y0, int16_t r, uint16_t color);
  mrbc_define_class_method(mrbc, lcd, "circle", mrbc_lcd_circle, MRB_ARGS_REQ(4));

  // M5.Lcd.drawCircleHelper(int16_t x0, int16_t y0, int16_t r, uint8_t cornername,uint16_t color);

  // M5.Lcd.fillCircle(int16_t x0, int16_t y0, int16_t r, uint16_t color);
  mrbc_define_class_method(mrbc, lcd, "fill_circle", mrbc_lcd_fill_circle, MRB_ARGS_REQ(4));

  // M5.Lcd.fillCircleHelper(int16_t x0, int16_t y0, int16_t r, uint8_t cornername,int16_t delta, uint16_t color);

  // M5.Lcd.drawTriangle(int16_t x0, int16_t y0, int16_t x1, int16_t y1, int16_t x2, int16_t y2, uint16_t color);
  mrbc_define_class_method(mrbc, lcd, "triangle", mrbc_lcd_triangle, MRB_ARGS_REQ(7));
#endif

  // M5.Lcd.fillTriangle(int16_t x0, int16_t y0, int16_t x1, int16_t y1, int16_t x2, int16_t y2, uint16_t color);
  mrbc_define_method(vm, mrbc_class_string, "fill_triangle", mrbc_lcd_fill_triangle);

#if 0
  // M5.Lcd.drawRoundRect(int16_t x0, int16_t y0, int16_t w, int16_t h, int16_t radius, uint16_t color);
  mrbc_define_class_method(mrbc, lcd, "round_rect", mrbc_lcd_round_rect, MRB_ARGS_REQ(6));

  // M5.Lcd.fillRoundRect(int16_t x0, int16_t y0, int16_t w, int16_t h, int16_t radius, uint16_t color);
  mrbc_define_class_method(mrbc, lcd, "fill_round_rect", mrbc_lcd_fill_round_rect, MRB_ARGS_REQ(6));

  // M5.Lcd.drawBitmap(int16_t x, int16_t y, const uint8_t bitmap[], int16_t w, int16_t h, uint16_t color);
  // -> M5.Lcd.drawBitmap(int16_t x0, int16_t y0, int16_t w, int16_t h, const uint16_t *data);
  mrbc_define_class_method(mrbc, lcd, "draw_bitmap", mrbc_lcd_draw_bitmap, MRB_ARGS_REQ(5));

  // M5.Lcd.drawRGBBitmap(int16_t x, int16_t y, const uint16_t bitmap[], int16_t w, int16_t h);
  // -> NOT found.

  // M5.Lcd.drawChar(uint16_t x, uint16_t y, char c, uint16_t color, uint16_t bg, uint8_t size);
  mrbc_define_class_method(mrbc, lcd, "draw_char", mrbc_lcd_draw_char, MRB_ARGS_REQ(6));

  // M5.Lcd.setCursor(uint16_t x0, uint16_t y0);
  mrbc_define_class_method(mrbc, lcd, "set_cursor", mrbc_lcd_set_cursor, MRB_ARGS_REQ(2));

  // M5.Lcd.setTextColor(uint16_t color);
  mrbc_define_class_method(mrbc, lcd, "text_color=", mrbc_lcd_set_text_color, MRB_ARGS_REQ(1));

  // M5.Lcd.setTextColor(uint16_t color, uint16_t backgroundcolor);

  // M5.Lcd.setTextSize(uint8_t size);
  mrbc_define_class_method(mrbc, lcd, "text_size=", mrbc_lcd_set_text_size, MRB_ARGS_REQ(1));

  // M5.Lcd.setTextWrap(boolean w);
  // -> M5.Lcd.setTextWrap(boolean w, boolean h);
  mrbc_define_class_method(mrbc, lcd, "set_text_wrap", mrbc_lcd_set_text_wrap, MRB_ARGS_REQ(2));

  // M5.Lcd.printf();
  // M5.Lcd.print();
  // M5.Lcd.println();

  // M5.Lcd.drawCentreString(const char *string, int dX, int poY, int font);
  mrbc_define_class_method(mrbc, lcd, "draw_string", mrbc_lcd_draw_string, MRB_ARGS_REQ(4));

  // M5.Lcd.drawRightString(const char *string, int dX, int poY, int font);

  // M5.Lcd.drawJpg(const uint8_t *jpg_data, size_t jpg_len, uint16_t x, uint16_t y);

  // M5.Lcd.drawJpgFile(fs::FS &fs, const char *path, uint16_t x, uint16_t y);

  // M5.Lcd.drawBmpFile(fs::FS &fs, const char *path, uint16_t x, uint16_t y);

///
  mrbc_define_class_method(mrbc, lcd, "rotate", mrbc_lcd_rotate, MRB_ARGS_REQ(1));

  mrbc_define_class_method(mrbc, lcd, "cx", mrbc_lcd_cx, MRB_ARGS_NONE());
  mrbc_define_class_method(mrbc, lcd, "cy", mrbc_lcd_cy, MRB_ARGS_NONE());
///
#endif
}

#ifdef __cplusplus
}
#endif
