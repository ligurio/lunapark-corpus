-- IBM AS400 (OS400) has sizeof(void *)==16, and a '%p' may generate up to 60
-- characters in a 'printf', causing a buffer overflow in tostring.

print{}  -- on an AS400 machine
