Provides miner stats as JSON. Used by `agent`.

While implementing this script please look at other miners implements in `agent.
Sometimes the miner does not provide temps or fan,  in this case you could use s
This script is not run separately but included in the calling agent script
so all the variables of `agent` are in the scope.

The script MUST define 2 variables.
`$khs` should hold total hashrate of the miner.
`$stats` should hold JSON stats data.

Example of `$stats` var:
```json
{
    "MH/s": [123, 223.3], //array of hashes
    "hs_units": "khs", //Optional: units that are uses for hashes array, "hs", "
    "temp": [60, 63], //array of miner temps
    "fan": [80, 100], //array of miner fans
    "uptime": 12313232, //seconds elapsed from miner stats
    "ar": [123, 3], //Optional: acceped, rejected shares
    "algo": "x22i" //Optional: algo used by miner, should one of the exiti
}
