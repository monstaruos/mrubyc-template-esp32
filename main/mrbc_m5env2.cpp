#include <Wire.h>

#ifdef __cplusplus
extern "C" {
#endif

#include "mrbc_m5env2.h"


static struct RClass* mrbc_class_m5env2;
static uint16_t i2c_address;


void
mrbc_m5env2_init(mrb_vm* vm, mrb_value* v, int argc)
{
  i2c_address = 0x44;
  Wire.begin(26, 32);
}


void
mrbc_m5env2_update(mrb_vm* vm, mrb_value* v, int argc)
{
  unsigned int data[6];

  // Start I2C Transmission
  Wire.beginTransmission(i2c_address);
  //  Send measurement command
  Wire.write(0x2C);
  Wire.write(0x06);
  // Stop I2C transmission
  if (Wire.endTransmission()!=0) {
    printf("fail transmission\n");
    SET_INT_RETURN(0);
    return;
  }

  delay(500);

  // Request 6 bytes of data
  Wire.requestFrom(i2c_address, 6);

  delay(50);

#if 0
  if (Wire.available()!=0) {
    printf("unavailable\n");
    SET_INT_RETURN(0);
    return;
  }
#endif

  // Read 6 bytes of data
  // cTemp msb, cTemp lsb, cTemp crc, humidity msb, humidity lsb, humidity crc
  for (int i=0;i<6;i++) {
    data[i]=Wire.read();
  };


  // Convert the data
  // cTemp = ((((data[0] * 256.0) + data[1]) * 175) / 65535.0) - 45;
  // humidity = ((((data[3] * 256.0) + data[4]) * 100) / 65535.0);
  SET_INT_RETURN( ((data[0] << 8) + data[1]) * 175 );
}


void
mrbc_mruby_m5env2_gem_init(struct VM *vm)
{
  mrbc_class_m5env2 = mrbc_define_class(vm, "M5ENV2", mrbc_class_object);

  mrbc_define_method(vm, mrbc_class_m5env2, "init",   mrbc_m5env2_init);
  mrbc_define_method(vm, mrbc_class_m5env2, "update", mrbc_m5env2_update);
}

#ifdef __cplusplus
}
#endif
