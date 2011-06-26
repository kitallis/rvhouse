#include <ace/ACE.h>

#include "../config_memory.h"
#include "reporter/client.h"
#include "ip_block/store.h"

#include "global.h"

namespace networking {
    
accessor<config_memory *>    net_conf(NULL);
accessor<reporter::client *> net_report(NULL);
accessor<ip_block::store *>  net_ip_block(NULL);

}
