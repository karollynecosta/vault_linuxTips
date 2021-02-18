storage "consul" {
    address = "$IP_LOCAL:8500",
    path    = "vault/"
}

listener "tcp" {
    address         = "0.0.0.0:8200",
    cluster_address = "$IP_PRIVADO_VM:8201",
    tls_disable     = 1
}

ui = true
api_addr = "http://0.0.0.0:8200"
cluster_name = "Vault"
cluster_addr = "$IP_SERVIDOR:8201"
disable_mlock = true
disable_cache = true
max_lease_ttl = "12h"
default_lease_ttl = "6h"
pid_file = "/var/lib/vault/vault.pid"