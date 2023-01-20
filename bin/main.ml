open Graphics

let () =
    open_graph "";
    set_window_title "Turtle";
    let x = size_x () / 2 in
    let y = size_y () / 2 in
    draw_circle x y 100;
    ignore (wait_next_event [Key_pressed])
