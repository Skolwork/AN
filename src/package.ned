package sd1;

import inet.networklayer.configurator.ipv4.Ipv4NodeConfigurator;
import inet.node.base.ApplicationLayerNodeBase;
import ned.IdealChannel;


@license(LGPL);
//
// TODO documentation
//
module Unnamed
{
    @display("bgb=297,224");
    types:
        moduleinterface Unnamed
        {
        }

    submodules:
        ipv4NodeConfigurator: Ipv4NodeConfigurator {
            @display("p=139,31");
        }
        applicationLayerNodeBase: ApplicationLayerNodeBase {
            @display("p=32,114");
        }
        applicationLayerNodeBase1: ApplicationLayerNodeBase {
            @display("p=246,114;is=l");
        }
        unnamed: <paramName> like Unnamed {
            @display("p=122,92");
        }
    connections:
        applicationLayerNodeBase.ethg[0] <--> IdealChannel <--> applicationLayerNodeBase.ethg[0];
        applicationLayerNodeBase1.pppg[0] <--> IdealChannel <--> applicationLayerNodeBase.pppg[0];
}

