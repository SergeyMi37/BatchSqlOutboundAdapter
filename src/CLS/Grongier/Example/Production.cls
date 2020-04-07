Class Grongier.Example.Production Extends Ens.Production
{

XData ProductionDefinition
{
<Production Name="Grongier.Example.Production" TestingEnabled="true" LogGeneralTraceEvents="false">
  <Description></Description>
  <ActorPoolSize>2</ActorPoolSize>
  <Item Name="Batch_Select" Category="" ClassName="Grongier.Example.SqlSelectOperation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="JGService">JG</Setting>
    <Setting Target="Adapter" Name="StayConnected">10</Setting>
    <Setting Target="Adapter" Name="DSN">jdbc:postgresql://localhost:5432/postgres?currentSchema="DemoData"</Setting>
    <Setting Target="Adapter" Name="JDBCClasspath">/opt/intersystems/ensemble/lib/postgresql-42.2.5.jar</Setting>
    <Setting Target="Adapter" Name="JDBCDriver">org.postgresql.Driver</Setting>
    <Setting Target="Adapter" Name="Credentials">Postgre</Setting>
    <Setting Target="Host" Name="FetchSize">5</Setting>
  </Item>
  <Item Name="JG" Category="" ClassName="EnsLib.JavaGateway.Service" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
  <Item Name="Batch_Insert" Category="" ClassName="Grongier.Example.SqlInsertOperation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="JGService">JG</Setting>
    <Setting Target="Adapter" Name="StayConnected">10</Setting>
    <Setting Target="Adapter" Name="DSN">jdbc:postgresql://localhost:5432/postgres?currentSchema="DemoData"</Setting>
    <Setting Target="Adapter" Name="JDBCClasspath">/opt/intersystems/ensemble/lib/postgresql-42.2.5.jar</Setting>
    <Setting Target="Adapter" Name="JDBCDriver">org.postgresql.Driver</Setting>
    <Setting Target="Adapter" Name="Credentials">Postgre</Setting>
    <Setting Target="Host" Name="batch">5</Setting>
    <Setting Target="Host" Name="insertSize">100000</Setting>
  </Item>
</Production>
}

}