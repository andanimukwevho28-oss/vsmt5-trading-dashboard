#property strict

string GetRuntimeInfo()
{
   return StringFormat("MT5 runtime ready. Symbol: %s, Period: %s", _Symbol, EnumToString(_Period));
}

bool IsNewBar()
{
   static datetime last_bar_time = 0;
   datetime current_bar_time = iTime(_Symbol, _Period, 0);

   if(last_bar_time == 0)
   {
      last_bar_time = current_bar_time;
      return false;
   }

   if(current_bar_time != last_bar_time)
   {
      last_bar_time = current_bar_time;
      return true;
   }

   return false;
}
