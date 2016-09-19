<div>THIS IS THE MACRO COMPONENT</div>
<div>Selected macro: ${content.macro ! "" }</div>

[#include "macros/macro-one.ftl"]
[#include "macros/macro-two.ftl"]
[#include "macros/macro-three.ftl"]
    
[#if content.macro == "macroOne"]
    [@macroone paramOne="a" paramTwo="b" /]
[#elseif content.macro == "macroTwo"]
    [@macrotwo paramOne="c" paramTwo="d" /]
[#elseif content.macro == "macroThree"]
    [@macrothree paramOne="e" paramTwo="f" /]
[#else]
    <div>INVALID MACRO SELECTED</div>
[/#if]