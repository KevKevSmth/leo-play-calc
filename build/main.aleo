program calculator_v2_1gca7l.aleo;



closure sum:
    input r0 as field;
    input r1 as field;
    add r0 r1 into r2;
    output r2 as field;


closure subtract:
    input r0 as field;
    input r1 as field;
    sub r0 r1 into r2;
    output r2 as field;


closure multiply:
    input r0 as field;
    input r1 as field;
    mul r0 r1 into r2;
    output r2 as field;


closure divide:
    input r0 as field;
    input r1 as field;
    is.neq r1 0field into r2;
    assert.eq r2 true;
    div r0 r1 into r3;
    output r3 as field;


function main:
    call sum 3field 4field into r0;
    call subtract 8field 5field into r1;
    call multiply 2field 6field into r2;
    call divide 9field 3field into r3;
    assert.eq r0 7field;
    assert.eq r1 3field;
    assert.eq r2 12field;
    assert.eq r3 3field;
