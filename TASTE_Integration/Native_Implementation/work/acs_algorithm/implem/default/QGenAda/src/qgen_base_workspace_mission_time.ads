--  Copyright (C) Your Company Name
--
--  @generated with QGen Code Generator 22.0w (20210910)
--  Command line arguments: ./xmi/Step.xmi
--    --gen-entrypoint
--    --wrap-io
--    --pre-process-xmi
--    --incremental
--    --no-misra
--    --language ada
--    --output src

pragma Style_Checks ("M999");  --  ignore long lines

with Interfaces; use Interfaces;

package qgen_base_workspace_Mission_Time is

   subtype Mission_Time is Unsigned_32;
   --  range is [0, 4294967295]

end qgen_base_workspace_Mission_Time;
--  @EOF