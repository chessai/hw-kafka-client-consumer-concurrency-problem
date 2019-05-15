{ pkgs }:

self: super:

with { inherit (pkgs.stdenv) lib; };

with pkgs.haskell.lib;

{
  hw-kafka-client-consumer-concurrency-problem = (
    with rec {
      hw-kafka-client-consumer-concurrency-problemSource = pkgs.lib.cleanSource ../.;
      hw-kafka-client-consumer-concurrency-problemBasic  = self.callCabal2nix "hw-kafka-client-consumer-concurrency-problem" hw-kafka-client-consumer-concurrency-problemSource { };
    };
    overrideCabal hw-kafka-client-consumer-concurrency-problemBasic (old: {
    })
  );
}
