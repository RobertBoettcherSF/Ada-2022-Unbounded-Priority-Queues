pragma Ada_2022;

with Ada.Containers; use Ada.Containers;

package body Unbounded_Priority_Queues_Demo is

   function Get_Priority (Element : Job) return Natural is
   begin
      return Element.Priority;
   end Get_Priority;

   --  Higher numeric priority dequeues first.
   function Before (Left, Right : Natural) return Boolean is
   begin
      return Left > Right;
   end Before;

   function Higher_First return Boolean is
      Q : Job_Queues.Queue;
      A, B, C : Job;
   begin
      Q.Enqueue ((Id => 1, Priority => 1));
      Q.Enqueue ((Id => 2, Priority => 5));
      Q.Enqueue ((Id => 3, Priority => 3));
      Q.Dequeue (A);
      Q.Dequeue (B);
      Q.Dequeue (C);
      return A.Id = 2 and then B.Id = 3 and then C.Id = 1
        and then Q.Current_Use = 0
        and then Q.Peak_Use = 3;
   end Higher_First;

end Unbounded_Priority_Queues_Demo;
