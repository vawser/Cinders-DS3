# -*- coding: utf-8 -*-
def t000013_1():
    """ State 0,1 """
    t000013_x0()

def t000013_x0():
    """ State 0,2 """
    while True:
        assert not CheckSelfDeath()
        """ State 1 """
        def WhilePaused():
            c1116()
        assert CheckSelfDeath() == 1

