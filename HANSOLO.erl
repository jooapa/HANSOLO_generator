% FILEPATH: /C:/Users/user/Documents/GitHub/HANSOLO_generator/HANSOLO.erl

-export([generate_hansolo/0]).

generate_hansolo() ->
    {ok, File} = file:open("HANSOLO.hs", [write]),
    generate_hansolo(File, 1000000),
    file:close(File).

generate_hansolo(_, 0) -> ok;
generate_hansolo(File, N) ->
    io:fwrite(File, "HANSOLO~n"),
    generate_hansolo(File, N-1).
