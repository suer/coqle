open Util
open CgiUtil
open Str

let _ =
  print_header ();
  try 
    let query = get_param "q" in
    ignore @@ Sys.command @@ "echo '<pre>'; echo 'Require Arith String List. SearchPattern(" ^query^ ").' | /opt/local/bin/coqtop | sed \"s/$/<br>/g\"| sed \"s,^\\\\([^ ]*\\\\):,<a href=\\\"detail.cgi?q=\\1\\\">\\1</a>:,g\"; echo '</pre>'" 
  with
  | err -> print_string @@ Printexc.to_string err

 
