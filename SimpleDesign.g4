grammar SimpleDesign;

design: (firewall | ids | encryption)* EOF;

firewall: 'firewall' '{' firewallRule+ '}';
firewallRule: 'rule' '"' RULE_TYPE '"' 'from' IP_RANGE 'to' IP_RANGE 'port' PORT;

ids: 'ids' '{' monitor+ alert+ '}';
monitor: 'monitor' IP_RANGE;
alert: 'alert' '"' ALERT_TYPE '"';

encryption: 'encryption' '{' method key '}';
method: 'method' '"' ENCRYPTION_METHOD '"';
key: 'key' '"' ENCRYPTION_KEY '"';

RULE_TYPE: 'allow' | 'deny';
IP_RANGE: '"' [0-9.]+ '/' [0-9]+ '"';
PORT: [0-9]+;
ALERT_TYPE: 'suspicious_activity';
ENCRYPTION_METHOD: 'AES-256';
ENCRYPTION_KEY: '"' [a-zA-Z0-9_]+ '"';

WS: [ \t\r\n]+ -> skip;