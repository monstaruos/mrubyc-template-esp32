#include <M5StickCPlus.h>

#ifdef __cplusplus
extern "C" {
#endif

#include "mrbc_buzzer.h"
#include "esp32-hal-dac.h"


static struct RClass* mrbc_class_buzzer;
static uint8_t _channel, _pin;


void
mrbc_buzzer_init(mrb_vm* vm, mrb_value* v, int argc)
{
  int c, p;
  c = GET_INT_ARG(1);
  p = GET_INT_ARG(2);
  _channel = c;
  _pin     = p;

  ledcSetup(_channel, 0, 13);
  ledcAttachPin(_pin, _channel);
}


void
mrbc_buzzer_mute(mrb_vm* vm, mrb_value* v, int argc)
{
  ledcWriteTone(_channel, 0);
  digitalWrite(_pin, 0);
}


void
mrbc_buzzer_tone(mrb_vm* vm, mrb_value* v, int argc)
{
  int f;
  f = GET_INT_ARG(1);
  ledcWriteTone(_channel, f);
}


void
mrbc_mruby_buzzer_gem_init(struct VM *vm)
{
  M5.begin();  // THIS IS TOO BAD.

  mrbc_class_buzzer = mrbc_define_class(vm, "BUZZER", mrbc_class_object);

  mrbc_define_method(vm, mrbc_class_buzzer, "init", mrbc_buzzer_init);
  mrbc_define_method(vm, mrbc_class_buzzer, "mute", mrbc_buzzer_mute);
  mrbc_define_method(vm, mrbc_class_buzzer, "tone", mrbc_buzzer_tone);
}

#ifdef __cplusplus
}
#endif
