#property strict

#include <MT5Helper.mqh>

input string BrokerName = "Demo Broker";
input int MagicNumber = 20260908;
input double LotSize = 0.01;

int OnInit()
{
   PrintFormat("EA initialized. Broker: %s, Magic: %d", BrokerName, MagicNumber);
   Print(GetRuntimeInfo());
   return(INIT_SUCCEEDED);
}

void OnTick()
{
   if(IsNewBar())
   {
      PrintFormat("New bar detected on %s %s", _Symbol, EnumToString(_Period));
   }
}

void OnDeinit(const int reason)
{
   PrintFormat("EA stopped. Reason: %d", reason);
}
