--  Ada 2022 topic: Ada.Containers.Unbounded_Priority_Queues.
pragma Ada_2022;
with Ada.Containers.Synchronized_Queue_Interfaces;
with Ada.Containers.Unbounded_Priority_Queues;
package Unbounded_Priority_Queues_Demo is
   type Job is record
      Id       : Integer;
      Priority : Natural;
   end record;

   function Get_Priority (Element : Job) return Natural;
   function Before (Left, Right : Natural) return Boolean;

   package Job_QI is new Ada.Containers.Synchronized_Queue_Interfaces
     (Element_Type => Job);
   package Job_Queues is new Ada.Containers.Unbounded_Priority_Queues
     (Queue_Interfaces => Job_QI,
      Queue_Priority   => Natural,
      Get_Priority     => Get_Priority,
      Before           => Before);

   function Higher_First return Boolean;
end Unbounded_Priority_Queues_Demo;
