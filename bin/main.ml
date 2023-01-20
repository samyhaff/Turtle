open Graphics
open Turtle

let init () =
    open_graph "";
    set_window_title "Turtle";
    let x = size_x () / 2 in
    let y = size_y () / 2 in
    moveto x y

let get_command () =
    if Array.length Sys.argv = 1 then failwith "No command given"
    else Driver.parse Sys.argv.(1)

let exec command =
    let (x, y)= current_point () in
    let (new_x, new_y) = Driver.move command x y in
    lineto new_x new_y

let () =
    init ();
    let command = get_command () in
    exec command;
    ignore (wait_next_event [Key_pressed])
