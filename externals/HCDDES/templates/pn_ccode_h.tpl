/* 
 * C Code header for Module {{MODNAME}}
 * Generated by PN_CodeGen on {{CREATE_TIME}}
 */

#ifndef _BIP_C_{{MODNAME}}_H_
#define _BIP_C_{{MODNAME}}_H_

{{#PN_SECTION}}
{{#STRUCT_SECTION}}
typedef struct 
{
{{#STATE_SECTION}}    unsigned char {{STATE_NAME}}:1;
{{/STATE_SECTION}}
{{#GLOBAL_VAR_SECTION}}    {{VAR_TYPE}} {{VAR_NAME}};
{{/GLOBAL_VAR_SECTION}}
} {{PN_NAME}}_context_type;
{{/STRUCT_SECTION}}{{#SETUP_SECTION}}
void {{PN_NAME}}_init( {{PN_NAME}}_context_type * ctxt );
void {{PN_NAME}}_reset( {{PN_NAME}}_context_type * ctxt );
{{/SETUP_SECTION}}{{#TRANS_SECTION}}
{{#TRANS_GUARD_SECTION}}unsigned int {{PN_NAME}}_{{TRANS_NAME}}_check( {{PN_NAME}}_context_type * ctxt{{#VAR_SECTION}}, {{VAR_TYPE}} {{VAR_NAME}}{{/VAR_SECTION}} );{{/TRANS_GUARD_SECTION}}
{{#TRANS_ACTION_SECTION}}void unsigned int {{PN_NAME}}_{{TRANS_NAME}}_exec( {{PN_NAME}}_context_type * ctxt{{#VAR_SECTION}}, {{VAR_TYPE}} {{VAR_NAME}}{{/VAR_SECTION}} );{{/TRANS_ACTION_SECTION}}
{{#TRANS_RECV_SECTION}}unsigned int {{PN_NAME}}_{{TRANS_NAME}}( {{PN_NAME}}_context_type * ctxt{{#VAR_SECTION}}, {{VAR_TYPE}} {{VAR_NAME}}{{/VAR_SECTION}});{{/TRANS_RECV_SECTION}}
{{#TRANS_SEND_SECTION}}void {{PN_NAME}}_{{TRANS_NAME}}_send( {{PN_NAME}}_context_type * ctxt );{{/TRANS_SEND_SECTION}}
{{/TRANS_SECTION}}{{/PN_SECTION}}

#endif /* _BIP_{{MODNAME}}_H_*/