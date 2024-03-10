syms s t;
F_s = (10/(s + 2)) + (48/((s + 2)*(s^2 + 16)));
f_t = ilaplace(F_s, s, t);
t_value = 2.5;
f_at_t = subs(f_t, t, t_value)


