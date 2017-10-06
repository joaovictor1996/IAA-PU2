getOn(sensor,Valor):- Valor<1.5.
getOff(sensor,Valor):- Valor>1.5.

setOn(valve,Value) :- Value is 0.5.
setOff(valve,Value) :- Value is 0.2.

velocidade(Vd,Ve,Se,Sd,Sf):- getOn(sensor,Se),getOn(sensor,Sd),getOn(sensor,Sf),setOff(valve,Ve),setOn(valve,Vd).
velocidade(Vd,Ve,Se,Sd,Sf):- getOn(sensor,Se),getOn(sensor,Sd),getOff(sensor,Sf),setOn(valve,Ve),setOn(valve,Vd).
velocidade(Vd,Ve,Se,Sd,Sf):- getOn(sensor,Se),getOff(sensor,Sd),getOn(sensor,Sf),setOn(valve,Ve),setOff(valve,Vd).
velocidade(Vd,Ve,Se,Sd,Sf):- getOn(sensor,Se),getOff(sensor,Sd),getOff(sensor,Sf),setOn(valve,Ve),setOn(valve,Vd).
velocidade(Vd,Ve,Se,Sd,Sf):- getOff(sensor,Se),getOn(sensor,Sd),getOff(sensor,Sf),setOn(valve,Ve),setOn(valve,Vd).
velocidade(Vd,Ve,Se,Sd,Sf):- getOff(sensor,Se),getOff(sensor,Sd),getOn(sensor,Sf),setOff(valve,Ve),setOn(valve,Vd).
velocidade(Vd,Ve,Se,Sd,Sf):- getOff(sensor,Se),getOn(sensor,Sd),getOn(sensor,Sf),setOff(valve,Ve),setOn(valve,Vd).
velocidade(Vd,Ve,Se,Sd,Sf):- getOff(sensor,Se),getOff(sensor,Sd),getOff(sensor,Sf),setOn(valve,Ve),setOn(valve,Vd).

