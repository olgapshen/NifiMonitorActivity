> In nomine Mithras et Cybele

# Patched Monitir Activity

This project is custom Nifi monitor. It differs from the original one in way, it doesn't sends file to `inactive` chanel while processor is starting up.

You need build it with `Java 8`.

Processor tested with `Nifi 1.14.0`.

## Build

```
mvn package
```

## Install

```
cp nifi-MonitorActivity-nar/target/*.nar $NIFI_HOME/lib/
```