function BSM_call_value(St, K, t, T, r, sigma)
    d1 = d1f(St, K, t, T, r, sigma)
    d2 = d1 - sigma * math.sqrt(T-t)
    call_value = St * N(d1) - exp(-r * (T-t))* K * N(d2)
    return call_value
