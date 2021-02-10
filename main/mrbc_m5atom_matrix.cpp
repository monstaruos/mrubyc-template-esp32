#include <M5Atom.h>

#ifdef __cplusplus
extern "C" {
#endif

#include "mrbc_m5atom_matrix.h"


static struct RClass* mrbc_class_m5atom_matrix;


void
mrbc_m5atom_matrix_clear(mrb_vm* vm, mrb_value* v, int argc)
{
  M5.dis.clear();
}


void
mrbc_m5atom_matrix_draw_pix(mrb_vm* vm, mrb_value* v, int argc)
{
  struct CRGB rgb;
  int x, y, c;
  x = GET_INT_ARG(1);
  y = GET_INT_ARG(2);
  c = GET_INT_ARG(3);
  rgb = CRGB(c);
  M5.dis.drawpix(x, y, rgb);
}


void
mrbc_mruby_m5atom_matrix_gem_init(struct VM *vm)
{
  M5.begin(true, true, true);  // THIS IS TOO BAD.

  mrbc_class_m5atom_matrix = mrbc_define_class(vm, "LED_MATRIX", mrbc_class_object);

  mrbc_define_method(vm, mrbc_class_m5atom_matrix, "clear",    mrbc_m5atom_matrix_clear);
  mrbc_define_method(vm, mrbc_class_m5atom_matrix, "draw_pix", mrbc_m5atom_matrix_draw_pix);
}

#ifdef __cplusplus
}
#endif
