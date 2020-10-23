/*
 * pool_address    - Pool address should be entered as "pool_address:port" (e.g "pool.ryo-currency.com:4444"). Only stratum pools are supported.
 * wallet_address  - Your wallet, or pool login.
 * rig_id          - Rig identifier for pool-side statistics (needs pool support).
 * pool_password   - Can be empty in most cases or "x".
 * use_nicehash    - Limit the nonce to 3 bytes as required by nicehash.
 * use_tls         - This option will make us connect using Transport Layer Security.
 * tls_fingerprint - Server's SHA256 fingerprint. If this string is non-empty then we will check the server's cert against it.
 * pool_weight     - Pool weight is a number telling the miner how important the pool is. Miner will mine mostly at the pool
 *                   with the highest weight, unless the pool fails. Weight must be an integer larger than 0.
 */

"pool_list" :
[
	{"pool_address" : "{POOLHOSTNAME}:{PORT}", "wallet_address" : "{WALLET}", "rig_id" : "{WORKER}", "pool_password" : "{PASSWORD}", "use_nicehash" : {NICEHASH}, "use_tls" : {SECURE}, "tls_fingerprint" : "", "pool_weight" : 1 },
],

/*
 * Currency to mine. Supported values:
 *
 *    bbscoin (automatic switch with block version 3 to cryptonight_v7)
 *    bittube (uses cryptonight_bittube2 algorithm)
 *    graft
 *    haven (automatic switch with block version 3 to cryptonight_haven)
 *    lethean
 *    masari
 *    qrl - Quantum Resistant Ledger
 *    ryo
 *    turtlecoin
 *    plenteum
 *    torque
 *    xcash
 *
 * Native algorithms which do not depend on any block versions:
 *
 *    # 256KiB scratchpad memory
 *    cryptonight_turtle
 *    # 1MiB scratchpad memory
 *    cryptonight_lite
 *    cryptonight_lite_v7
 *    cryptonight_lite_v7_xor (algorithm used by ipbc)
 *    # 2MiB scratchpad memory
 *    cryptonight
 *    cryptonight_gpu (for Ryo's 14th of Feb fork)
 *    cryptonight_superfast
 *    cryptonight_v7
 *    cryptonight_v8
 *    cryptonight_v8_double (used by xcash)
 *    cryptonight_v8_half (used by masari and torque)
 *    cryptonight_v8_reversewaltz (used by graft)
 *    cryptonight_v8_zelerius
 *    # 4MiB scratchpad memory
 *    cryptonight_bittube2
 *    cryptonight_haven
 *    cryptonight_heavy
 */

"currency" : "{CURRENCY}",
