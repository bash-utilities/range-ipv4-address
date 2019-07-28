#!/usr/bin/env bash


## Returns something like '192.168.0.1/24' from something like '192.168.0.42'
range_ipv4_address(){    ## range_ipv4_address <ip>
    local _ip="${1:?Parameter_Error: ${FUNCNAME[0]} not provided an IP address}"

    local _ip_range_base="$(awk -F[./] '{print $1 "." $2 "." $3 ".1"}' <<<"${_ip}")"
    local _suffix='24'

    if [ "$(grep -q '/' <<<"${_ip}")" ] && [ -n "${_ip#*/}" ]; then
        _suffix="${_ip#*/}"
    else
        case "${_ip_range_base%.*}" in
            127.0.*)
                _suffix="8"
            ;;
            100.64.*)
                _suffix="10"
            ;;
            172.16.*)
                _suffix="12"
            ;;
            169.254.*|192.168.*)
                _suffix="16"
            ;;
        esac
    fi

    printf '%s/%s' "${_ip_range_base}" "${_suffix}"
}

#
#
#
## https://en.wikipedia.org/wiki/Reserved_IP_addresses
