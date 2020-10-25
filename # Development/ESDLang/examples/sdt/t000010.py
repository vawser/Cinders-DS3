# -*- coding: utf-8 -*-
def t000010_1():
    """ State 0,1 """
    t000010_x0()

def t000010_x0():
    """ State 0,2 """
    while True:
        assert f113() < 0.5 and f116(-1) == 1000000
        """ State 3 """
        if GetCurrentStateElapsedTime() > 1:
            """ State 1 """
            def WhilePaused():
                c1116()
            assert f113() > 1 or not f116(-1) == 1000000
        elif f113() > 1 or not f116(-1) == 1000000:
            pass

