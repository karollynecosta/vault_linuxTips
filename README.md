# Descomplicando Vault 

Com o objetivo de difundir com a comunidade meus conhecimentos de vault adquiridos com o curso Descomplicando Vault - #LinuxTips, este repositório se tornará base para estudos e conquistas com a plataforma da Hashicorp. 

## Referências

https://school.linuxtips.io/courses/

https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonec2.html

Necessário para OTP pegar as conf no sshd e pam.d através desta documentação:

https://github.com/hashicorp/vault-ssh-helper

https://releases.hashicorp.com/vault-ssh-helper/0.2.1/

https://www.makeareadme.com/

Para OTP editei a police Default e habilitei:
```yaml
# To view in Web UI
path "sys/mounts" {
	capabilities = ["read", "update"]
}

# To configure the SSH engine
path "ssh/*" {
    capabilities = ["create", "read", "update", "delete", "list"]
}

# To enable secrets engines
path "sys/mounts/*" {
    capabilities = ["create", "read", "update", "delete"]
}

Também para OTP foi criado via modo grafico uma nova ACL Policy
path "ssh/creds/otp_key_role" {
  capabilities = ["create", "read", "update"]
}
```


## Dev
Karollyne Costa - karolcosta2@gmail.com

Caso possuam alguma sugestão, fico feliz de recebê-las! 