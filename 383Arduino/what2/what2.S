#define __SFR_OFFSET 0

#include "avr/io.h"
#include <avr/portpins.h>

.text
.global setup
.global loop
.global one
.global two

setup:
  ldi r16, 0b00000000
  ldi r17, 0b11111111
  ldi r18, 0b00000111

    out DDRB, r16
    out DDRD, r17

loop:
  out PORTB, r18

one: 
  sbis PIND, 7
  brne two
  out PORTB, r17
  jmp one

two: 
  out PORTB, r16
  jmp one
