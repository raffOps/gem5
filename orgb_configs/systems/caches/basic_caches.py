# -*- coding: utf-8 -*-
######################################################################
## Classes relacionadas às caches. Podem ser modificadas para alterar
## o tamanho (size), a associatividade (assoc), a latência no caso de
## hit (hit_latency) e a latência no caso de miss (response_latency) -
## ou seja, o tempo necessário para encaminhar a requisição ao proximo
## nível na hierarquia.
######################################################################

from m5.objects import Cache

class BasicL1ICache(Cache):

    size = '32kB'
    assoc = 8
    tag_latency = 1
    data_latency = 1
    response_latency = 1
    mshrs = 4
    tgts_per_mshr = 16

    def __init__(self, options=None):
        super(BasicL1ICache, self).__init__()        
        pass

class BasicL1DCache(Cache):

    size = '16kB'
    #assoc = 8
    assoc = 1
    tag_latency = 1
    data_latency = 2
    response_latency = 2
    mshrs = 4
    tgts_per_mshr = 16

    def __init__(self, options):
        super(BasicL1DCache, self).__init__()
        if options.l1_size:
            self.size = options.l1_size
        if options.l1_assoc:
            self.assoc = int(options.l1_assoc)
        if options.l1_tag_latency:
            self.tag_latency = int(options.l1_tag_latency)

class BasicL2Cache(Cache):

    size = '128kB'
    assoc = 8
    #assoc = 1
    tag_latency = 8
    data_latency = 12
    response_latency = 4
    mshrs = 16
    tgts_per_mshr = 16

    def __init__(self, options=None):
        super(BasicL2Cache, self).__init__()
        if options.l2_size:
            self.size = options.l2_size
        if options.l2_assoc:
            self.assoc = int(options.l2_assoc)
        if options.l2_tag_latency:
            self.tag_latency = int(options.l2_tag_latency)


class BasicL3Cache(Cache):

    size = '1MB'
    #assoc = 16
    assoc = 1
    tag_latency = 12
    data_latency = 36
    response_latency = 4
    mshrs = 16
    tgts_per_mshr = 16

    def __init__(self, options=None):
        super(BasicL3Cache, self).__init__()
        if options.l3_size:
            self.size = options.l3_size
        if options.l3_assoc:
            self.assoc = int(options.l3_assoc)
        if options.l3_tag_latency:
            self.tag_latency = int(options.l3_tag_latency)