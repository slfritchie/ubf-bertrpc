
-module(ubf_bertrpc_cheapserver).

-export([start/1]).

start(TcpPort) ->
    DefaultMaxConn = 10 * 1000,
    DefaultTimeout = 60 * 60 * 1000,
    BBFOptions = [{statelessrpc, true},         % mandatory for bertrpc
                  {startplugin, ubf_bertrpc_plugin},
                  {serverhello, undefined},
                  {simplerpc, true},
                  {proto, ebf},
                  {maxconn, DefaultMaxConn},
                  {idletimer, DefaultTimeout},
                  {registeredname, test_bbf_tcp_port}],

    ubf_server:start_link(undefined, [ubf_bertrpc_plugin], TcpPort, BBFOptions).
