pragma Ada_2022;
with Ada.Assertions; use Ada.Assertions;
with Ada.Text_IO; use Ada.Text_IO;
with Unbounded_Priority_Queues_Demo;
procedure Tests is
begin
   Assert (Unbounded_Priority_Queues_Demo.Higher_First);
   Put_Line ("PASS Unbounded_Priority_Queues higher-first order");
   Put_Line ("All Unbounded_Priority_Queues topic tests passed.");
end Tests;
