(function(){/*

 Copyright The Closure Library Authors.
 SPDX-License-Identifier: Apache-2.0
*/
var n;function aa(a){var b=0;return function(){return b<a.length?{done:!1,value:a[b++]}:{done:!0}}}
var ba="function"==typeof Object.defineProperties?Object.defineProperty:function(a,b,c){if(a==Array.prototype||a==Object.prototype)return a;a[b]=c.value;return a};
function ca(a){a=["object"==typeof globalThis&&globalThis,a,"object"==typeof window&&window,"object"==typeof self&&self,"object"==typeof global&&global];for(var b=0;b<a.length;++b){var c=a[b];if(c&&c.Math==Math)return c}throw Error("Cannot find global object");}
var da=ca(this);function r(a,b){if(b)a:{for(var c=da,d=a.split("."),e=0;e<d.length-1;e++){var f=d[e];if(!(f in c))break a;c=c[f]}d=d[d.length-1];e=c[d];f=b(e);f!=e&&null!=f&&ba(c,d,{configurable:!0,writable:!0,value:f})}}
r("Symbol",function(a){function b(e){if(this instanceof b)throw new TypeError("Symbol is not a constructor");return new c("jscomp_symbol_"+(e||"")+"_"+d++,e)}
function c(e,f){this.f=e;ba(this,"description",{configurable:!0,writable:!0,value:f})}
if(a)return a;c.prototype.toString=function(){return this.f};
var d=0;return b});
r("Symbol.iterator",function(a){if(a)return a;a=Symbol("Symbol.iterator");for(var b="Array Int8Array Uint8Array Uint8ClampedArray Int16Array Uint16Array Int32Array Uint32Array Float32Array Float64Array".split(" "),c=0;c<b.length;c++){var d=da[b[c]];"function"===typeof d&&"function"!=typeof d.prototype[a]&&ba(d.prototype,a,{configurable:!0,writable:!0,value:function(){return ea(aa(this))}})}return a});
function ea(a){a={next:a};a[Symbol.iterator]=function(){return this};
return a}
function t(a){var b="undefined"!=typeof Symbol&&Symbol.iterator&&a[Symbol.iterator];return b?b.call(a):{next:aa(a)}}
function fa(a){for(var b,c=[];!(b=a.next()).done;)c.push(b.value);return c}
var ha="function"==typeof Object.create?Object.create:function(a){function b(){}
b.prototype=a;return new b},ia=function(){function a(){function c(){}
new c;Reflect.construct(c,[],function(){});
return new c instanceof c}
if("undefined"!=typeof Reflect&&Reflect.construct){if(a())return Reflect.construct;var b=Reflect.construct;return function(c,d,e){c=b(c,d);e&&Reflect.setPrototypeOf(c,e.prototype);return c}}return function(c,d,e){void 0===e&&(e=c);
e=ha(e.prototype||Object.prototype);return Function.prototype.apply.call(c,e,d)||e}}(),ja;
if("function"==typeof Object.setPrototypeOf)ja=Object.setPrototypeOf;else{var ka;a:{var la={a:!0},ma={};try{ma.__proto__=la;ka=ma.a;break a}catch(a){}ka=!1}ja=ka?function(a,b){a.__proto__=b;if(a.__proto__!==b)throw new TypeError(a+" is not extensible");return a}:null}var na=ja;
function v(a,b){a.prototype=ha(b.prototype);a.prototype.constructor=a;if(na)na(a,b);else for(var c in b)if("prototype"!=c)if(Object.defineProperties){var d=Object.getOwnPropertyDescriptor(b,c);d&&Object.defineProperty(a,c,d)}else a[c]=b[c];a.N=b.prototype}
function oa(){this.m=!1;this.i=null;this.g=void 0;this.f=1;this.j=this.l=0;this.u=this.h=null}
function pa(a){if(a.m)throw new TypeError("Generator is already running");a.m=!0}
oa.prototype.B=function(a){this.g=a};
function qa(a,b){a.h={Da:b,qa:!0};a.f=a.l||a.j}
oa.prototype["return"]=function(a){this.h={"return":a};this.f=this.j};
function w(a,b,c){a.f=c;return{value:b}}
oa.prototype.F=function(a){this.f=a};
function ra(a){a.l=2;a.j=3}
function sa(a){a.l=0;a.h=null}
function ta(a){a.u=[a.h];a.l=0;a.j=0}
function ua(a){var b=a.u.splice(0)[0];(b=a.h=a.h||b)?b.qa?a.f=a.l||a.j:void 0!=b.F&&a.j<b.F?(a.f=b.F,a.h=null):a.f=a.j:a.f=0}
function va(a){this.f=new oa;this.g=a}
function wa(a,b){pa(a.f);var c=a.f.i;if(c)return xa(a,"return"in c?c["return"]:function(d){return{value:d,done:!0}},b,a.f["return"]);
a.f["return"](b);return ya(a)}
function xa(a,b,c,d){try{var e=b.call(a.f.i,c);if(!(e instanceof Object))throw new TypeError("Iterator result "+e+" is not an object");if(!e.done)return a.f.m=!1,e;var f=e.value}catch(g){return a.f.i=null,qa(a.f,g),ya(a)}a.f.i=null;d.call(a.f,f);return ya(a)}
function ya(a){for(;a.f.f;)try{var b=a.g(a.f);if(b)return a.f.m=!1,{value:b.value,done:!1}}catch(c){a.f.g=void 0,qa(a.f,c)}a.f.m=!1;if(a.f.h){b=a.f.h;a.f.h=null;if(b.qa)throw b.Da;return{value:b["return"],done:!0}}return{value:void 0,done:!0}}
function za(a){this.next=function(b){pa(a.f);a.f.i?b=xa(a,a.f.i.next,b,a.f.B):(a.f.B(b),b=ya(a));return b};
this["throw"]=function(b){pa(a.f);a.f.i?b=xa(a,a.f.i["throw"],b,a.f.B):(qa(a.f,b),b=ya(a));return b};
this["return"]=function(b){return wa(a,b)};
this[Symbol.iterator]=function(){return this}}
function x(a,b){var c=new za(new va(b));na&&a.prototype&&na(c,a.prototype);return c}
r("Reflect",function(a){return a?a:{}});
r("Reflect.construct",function(){return ia});
r("Reflect.setPrototypeOf",function(a){return a?a:na?function(b,c){try{return na(b,c),!0}catch(d){return!1}}:null});
function Aa(a,b,c){if(null==a)throw new TypeError("The 'this' value for String.prototype."+c+" must not be null or undefined");if(b instanceof RegExp)throw new TypeError("First argument to String.prototype."+c+" must not be a regular expression");return a+""}
r("String.prototype.endsWith",function(a){return a?a:function(b,c){var d=Aa(this,b,"endsWith");b+="";void 0===c&&(c=d.length);for(var e=Math.max(0,Math.min(c|0,d.length)),f=b.length;0<f&&0<e;)if(d[--e]!=b[--f])return!1;return 0>=f}});
r("String.prototype.startsWith",function(a){return a?a:function(b,c){var d=Aa(this,b,"startsWith");b+="";for(var e=d.length,f=b.length,g=Math.max(0,Math.min(c|0,d.length)),h=0;h<f&&g<e;)if(d[g++]!=b[h++])return!1;return h>=f}});
function Ba(a,b){a instanceof String&&(a+="");var c=0,d={next:function(){if(c<a.length){var e=c++;return{value:b(e,a[e]),done:!1}}d.next=function(){return{done:!0,value:void 0}};
return d.next()}};
d[Symbol.iterator]=function(){return d};
return d}
r("Array.prototype.keys",function(a){return a?a:function(){return Ba(this,function(b){return b})}});
r("Array.prototype.values",function(a){return a?a:function(){return Ba(this,function(b,c){return c})}});
function Ca(a,b){return Object.prototype.hasOwnProperty.call(a,b)}
var Da="function"==typeof Object.assign?Object.assign:function(a,b){for(var c=1;c<arguments.length;c++){var d=arguments[c];if(d)for(var e in d)Ca(d,e)&&(a[e]=d[e])}return a};
r("Object.assign",function(a){return a||Da});
r("Promise",function(a){function b(g){this.g=0;this.h=void 0;this.f=[];var h=this.i();try{g(h.resolve,h.reject)}catch(k){h.reject(k)}}
function c(){this.f=null}
function d(g){return g instanceof b?g:new b(function(h){h(g)})}
if(a)return a;c.prototype.g=function(g){if(null==this.f){this.f=[];var h=this;this.h(function(){h.j()})}this.f.push(g)};
var e=da.setTimeout;c.prototype.h=function(g){e(g,0)};
c.prototype.j=function(){for(;this.f&&this.f.length;){var g=this.f;this.f=[];for(var h=0;h<g.length;++h){var k=g[h];g[h]=null;try{k()}catch(l){this.i(l)}}}this.f=null};
c.prototype.i=function(g){this.h(function(){throw g;})};
b.prototype.i=function(){function g(l){return function(m){k||(k=!0,l.call(h,m))}}
var h=this,k=!1;return{resolve:g(this.C),reject:g(this.j)}};
b.prototype.C=function(g){if(g===this)this.j(new TypeError("A Promise cannot resolve to itself"));else if(g instanceof b)this.G(g);else{a:switch(typeof g){case "object":var h=null!=g;break a;case "function":h=!0;break a;default:h=!1}h?this.u(g):this.l(g)}};
b.prototype.u=function(g){var h=void 0;try{h=g.then}catch(k){this.j(k);return}"function"==typeof h?this.H(h,g):this.l(g)};
b.prototype.j=function(g){this.m(2,g)};
b.prototype.l=function(g){this.m(1,g)};
b.prototype.m=function(g,h){if(0!=this.g)throw Error("Cannot settle("+g+", "+h+"): Promise already settled in state"+this.g);this.g=g;this.h=h;this.B()};
b.prototype.B=function(){if(null!=this.f){for(var g=0;g<this.f.length;++g)f.g(this.f[g]);this.f=null}};
var f=new c;b.prototype.G=function(g){var h=this.i();g.ca(h.resolve,h.reject)};
b.prototype.H=function(g,h){var k=this.i();try{g.call(h,k.resolve,k.reject)}catch(l){k.reject(l)}};
b.prototype.then=function(g,h){function k(u,q){return"function"==typeof u?function(B){try{l(u(B))}catch(E){m(E)}}:q}
var l,m,p=new b(function(u,q){l=u;m=q});
this.ca(k(g,l),k(h,m));return p};
b.prototype["catch"]=function(g){return this.then(void 0,g)};
b.prototype.ca=function(g,h){function k(){switch(l.g){case 1:g(l.h);break;case 2:h(l.h);break;default:throw Error("Unexpected state: "+l.g);}}
var l=this;null==this.f?f.g(k):this.f.push(k)};
b.resolve=d;b.reject=function(g){return new b(function(h,k){k(g)})};
b.race=function(g){return new b(function(h,k){for(var l=t(g),m=l.next();!m.done;m=l.next())d(m.value).ca(h,k)})};
b.all=function(g){var h=t(g),k=h.next();return k.done?d([]):new b(function(l,m){function p(B){return function(E){u[B]=E;q--;0==q&&l(u)}}
var u=[],q=0;do u.push(void 0),q++,d(k.value).ca(p(u.length-1),m),k=h.next();while(!k.done)})};
return b});
r("Object.setPrototypeOf",function(a){return a||na});
r("Object.is",function(a){return a?a:function(b,c){return b===c?0!==b||1/b===1/c:b!==b&&c!==c}});
r("Array.prototype.includes",function(a){return a?a:function(b,c){var d=this;d instanceof String&&(d=String(d));var e=d.length,f=c||0;for(0>f&&(f=Math.max(f+e,0));f<e;f++){var g=d[f];if(g===b||Object.is(g,b))return!0}return!1}});
r("String.prototype.includes",function(a){return a?a:function(b,c){return-1!==Aa(this,b,"includes").indexOf(b,c||0)}});
r("WeakMap",function(a){function b(k){this.f=(h+=Math.random()+1).toString();if(k){k=t(k);for(var l;!(l=k.next()).done;)l=l.value,this.set(l[0],l[1])}}
function c(){}
function d(k){var l=typeof k;return"object"===l&&null!==k||"function"===l}
function e(k){if(!Ca(k,g)){var l=new c;ba(k,g,{value:l})}}
function f(k){var l=Object[k];l&&(Object[k]=function(m){if(m instanceof c)return m;Object.isExtensible(m)&&e(m);return l(m)})}
if(function(){if(!a||!Object.seal)return!1;try{var k=Object.seal({}),l=Object.seal({}),m=new a([[k,2],[l,3]]);if(2!=m.get(k)||3!=m.get(l))return!1;m["delete"](k);m.set(l,4);return!m.has(k)&&4==m.get(l)}catch(p){return!1}}())return a;
var g="$jscomp_hidden_"+Math.random();f("freeze");f("preventExtensions");f("seal");var h=0;b.prototype.set=function(k,l){if(!d(k))throw Error("Invalid WeakMap key");e(k);if(!Ca(k,g))throw Error("WeakMap key fail: "+k);k[g][this.f]=l;return this};
b.prototype.get=function(k){return d(k)&&Ca(k,g)?k[g][this.f]:void 0};
b.prototype.has=function(k){return d(k)&&Ca(k,g)&&Ca(k[g],this.f)};
b.prototype["delete"]=function(k){return d(k)&&Ca(k,g)&&Ca(k[g],this.f)?delete k[g][this.f]:!1};
return b});
r("Array.prototype.entries",function(a){return a?a:function(){return Ba(this,function(b,c){return[b,c]})}});
r("Map",function(a){function b(){var h={};return h.previous=h.next=h.head=h}
function c(h,k){var l=h.f;return ea(function(){if(l){for(;l.head!=h.f;)l=l.previous;for(;l.next!=l.head;)return l=l.next,{done:!1,value:k(l)};l=null}return{done:!0,value:void 0}})}
function d(h,k){var l=k&&typeof k;"object"==l||"function"==l?f.has(k)?l=f.get(k):(l=""+ ++g,f.set(k,l)):l="p_"+k;var m=h.g[l];if(m&&Ca(h.g,l))for(var p=0;p<m.length;p++){var u=m[p];if(k!==k&&u.key!==u.key||k===u.key)return{id:l,list:m,index:p,A:u}}return{id:l,list:m,index:-1,A:void 0}}
function e(h){this.g={};this.f=b();this.size=0;if(h){h=t(h);for(var k;!(k=h.next()).done;)k=k.value,this.set(k[0],k[1])}}
if(function(){if(!a||"function"!=typeof a||!a.prototype.entries||"function"!=typeof Object.seal)return!1;try{var h=Object.seal({x:4}),k=new a(t([[h,"s"]]));if("s"!=k.get(h)||1!=k.size||k.get({x:4})||k.set({x:4},"t")!=k||2!=k.size)return!1;var l=k.entries(),m=l.next();if(m.done||m.value[0]!=h||"s"!=m.value[1])return!1;m=l.next();return m.done||4!=m.value[0].x||"t"!=m.value[1]||!l.next().done?!1:!0}catch(p){return!1}}())return a;
var f=new WeakMap;e.prototype.set=function(h,k){h=0===h?0:h;var l=d(this,h);l.list||(l.list=this.g[l.id]=[]);l.A?l.A.value=k:(l.A={next:this.f,previous:this.f.previous,head:this.f,key:h,value:k},l.list.push(l.A),this.f.previous.next=l.A,this.f.previous=l.A,this.size++);return this};
e.prototype["delete"]=function(h){h=d(this,h);return h.A&&h.list?(h.list.splice(h.index,1),h.list.length||delete this.g[h.id],h.A.previous.next=h.A.next,h.A.next.previous=h.A.previous,h.A.head=null,this.size--,!0):!1};
e.prototype.clear=function(){this.g={};this.f=this.f.previous=b();this.size=0};
e.prototype.has=function(h){return!!d(this,h).A};
e.prototype.get=function(h){return(h=d(this,h).A)&&h.value};
e.prototype.entries=function(){return c(this,function(h){return[h.key,h.value]})};
e.prototype.keys=function(){return c(this,function(h){return h.key})};
e.prototype.values=function(){return c(this,function(h){return h.value})};
e.prototype.forEach=function(h,k){for(var l=this.entries(),m;!(m=l.next()).done;)m=m.value,h.call(k,m[1],m[0],this)};
e.prototype[Symbol.iterator]=e.prototype.entries;var g=0;return e});
r("Object.entries",function(a){return a?a:function(b){var c=[],d;for(d in b)Ca(b,d)&&c.push([d,b[d]]);return c}});
r("Set",function(a){function b(c){this.f=new Map;if(c){c=t(c);for(var d;!(d=c.next()).done;)this.add(d.value)}this.size=this.f.size}
if(function(){if(!a||"function"!=typeof a||!a.prototype.entries||"function"!=typeof Object.seal)return!1;try{var c=Object.seal({x:4}),d=new a(t([c]));if(!d.has(c)||1!=d.size||d.add(c)!=d||1!=d.size||d.add({x:4})!=d||2!=d.size)return!1;var e=d.entries(),f=e.next();if(f.done||f.value[0]!=c||f.value[1]!=c)return!1;f=e.next();return f.done||f.value[0]==c||4!=f.value[0].x||f.value[1]!=f.value[0]?!1:e.next().done}catch(g){return!1}}())return a;
b.prototype.add=function(c){c=0===c?0:c;this.f.set(c,c);this.size=this.f.size;return this};
b.prototype["delete"]=function(c){c=this.f["delete"](c);this.size=this.f.size;return c};
b.prototype.clear=function(){this.f.clear();this.size=0};
b.prototype.has=function(c){return this.f.has(c)};
b.prototype.entries=function(){return this.f.entries()};
b.prototype.values=function(){return this.f.values()};
b.prototype.keys=b.prototype.values;b.prototype[Symbol.iterator]=b.prototype.values;b.prototype.forEach=function(c,d){var e=this;this.f.forEach(function(f){return c.call(d,f,f,e)})};
return b});
var y=this||self;function z(a,b,c){a=a.split(".");c=c||y;a[0]in c||"undefined"==typeof c.execScript||c.execScript("var "+a[0]);for(var d;a.length&&(d=a.shift());)a.length||void 0===b?c[d]&&c[d]!==Object.prototype[d]?c=c[d]:c=c[d]={}:c[d]=b}
var Ea=/^[\w+/_-]+[=]{0,2}$/,Fa=null;function Ga(a){return(a=a.querySelector&&a.querySelector("script[nonce]"))&&(a=a.nonce||a.getAttribute("nonce"))&&Ea.test(a)?a:""}
function A(a,b){for(var c=a.split("."),d=b||y,e=0;e<c.length;e++)if(d=d[c[e]],null==d)return null;return d}
function Ha(){}
function Ia(a){a.ka=void 0;a.getInstance=function(){return a.ka?a.ka:a.ka=new a}}
function Ja(a){var b=typeof a;return"object"!=b?b:a?Array.isArray(a)?"array":b:"null"}
function Ka(a){var b=Ja(a);return"array"==b||"object"==b&&"number"==typeof a.length}
function La(a){return"function"==Ja(a)}
function Ma(a){var b=typeof a;return"object"==b&&null!=a||"function"==b}
function Na(a){return Object.prototype.hasOwnProperty.call(a,Oa)&&a[Oa]||(a[Oa]=++Pa)}
var Oa="closure_uid_"+(1E9*Math.random()>>>0),Pa=0;function Qa(a,b,c){return a.call.apply(a.bind,arguments)}
function Ra(a,b,c){if(!a)throw Error();if(2<arguments.length){var d=Array.prototype.slice.call(arguments,2);return function(){var e=Array.prototype.slice.call(arguments);Array.prototype.unshift.apply(e,d);return a.apply(b,e)}}return function(){return a.apply(b,arguments)}}
function C(a,b,c){Function.prototype.bind&&-1!=Function.prototype.bind.toString().indexOf("native code")?C=Qa:C=Ra;return C.apply(null,arguments)}
function Sa(a,b){var c=Array.prototype.slice.call(arguments,1);return function(){var d=c.slice();d.push.apply(d,arguments);return a.apply(this,d)}}
var D=Date.now;function Ta(a,b){z(a,b,void 0)}
function F(a,b){function c(){}
c.prototype=b.prototype;a.N=b.prototype;a.prototype=new c;a.prototype.constructor=a}
function Va(a){return a}
;function G(a){if(Error.captureStackTrace)Error.captureStackTrace(this,G);else{var b=Error().stack;b&&(this.stack=b)}a&&(this.message=String(a))}
F(G,Error);G.prototype.name="CustomError";function Wa(a){a=a.url;var b=/[?&]dsh=1(&|$)/.test(a);this.h=!b&&/[?&]ae=1(&|$)/.test(a);this.i=!b&&/[?&]ae=2(&|$)/.test(a);if((this.f=/[?&]adurl=([^&]*)/.exec(a))&&this.f[1]){try{var c=decodeURIComponent(this.f[1])}catch(d){c=null}this.g=c}}
;function Xa(a){var b=!1,c;return function(){b||(c=a(),b=!0);return c}}
;var Ya=Array.prototype.indexOf?function(a,b){return Array.prototype.indexOf.call(a,b,void 0)}:function(a,b){if("string"===typeof a)return"string"!==typeof b||1!=b.length?-1:a.indexOf(b,0);
for(var c=0;c<a.length;c++)if(c in a&&a[c]===b)return c;return-1},H=Array.prototype.forEach?function(a,b,c){Array.prototype.forEach.call(a,b,c)}:function(a,b,c){for(var d=a.length,e="string"===typeof a?a.split(""):a,f=0;f<d;f++)f in e&&b.call(c,e[f],f,a)},Za=Array.prototype.filter?function(a,b){return Array.prototype.filter.call(a,b,void 0)}:function(a,b){for(var c=a.length,d=[],e=0,f="string"===typeof a?a.split(""):a,g=0;g<c;g++)if(g in f){var h=f[g];
b.call(void 0,h,g,a)&&(d[e++]=h)}return d},$a=Array.prototype.map?function(a,b){return Array.prototype.map.call(a,b,void 0)}:function(a,b){for(var c=a.length,d=Array(c),e="string"===typeof a?a.split(""):a,f=0;f<c;f++)f in e&&(d[f]=b.call(void 0,e[f],f,a));
return d},ab=Array.prototype.reduce?function(a,b,c){return Array.prototype.reduce.call(a,b,c)}:function(a,b,c){var d=c;
H(a,function(e,f){d=b.call(void 0,d,e,f,a)});
return d};
function bb(a,b){a:{var c=a.length;for(var d="string"===typeof a?a.split(""):a,e=0;e<c;e++)if(e in d&&b.call(void 0,d[e],e,a)){c=e;break a}c=-1}return 0>c?null:"string"===typeof a?a.charAt(c):a[c]}
function cb(a,b){var c=Ya(a,b);0<=c&&Array.prototype.splice.call(a,c,1)}
function db(a){var b=a.length;if(0<b){for(var c=Array(b),d=0;d<b;d++)c[d]=a[d];return c}return[]}
function eb(a,b){for(var c=1;c<arguments.length;c++){var d=arguments[c];if(Ka(d)){var e=a.length||0,f=d.length||0;a.length=e+f;for(var g=0;g<f;g++)a[e+g]=d[g]}else a.push(d)}}
;function fb(a,b){for(var c in a)b.call(void 0,a[c],c,a)}
function gb(a,b){var c=Ka(b),d=c?b:arguments;for(c=c?0:1;c<d.length;c++){if(null==a)return;a=a[d[c]]}return a}
function hb(a){var b=ib,c;for(c in b)if(a.call(void 0,b[c],c,b))return c}
function jb(a){for(var b in a)return!1;return!0}
function kb(a,b){if(null!==a&&b in a)throw Error('The object already contains the key "'+b+'"');a[b]=!0}
function lb(a,b){for(var c in a)if(!(c in b)||a[c]!==b[c])return!1;for(var d in b)if(!(d in a))return!1;return!0}
function mb(a){var b={},c;for(c in a)b[c]=a[c];return b}
function nb(a){var b=Ja(a);if("object"==b||"array"==b){if(La(a.clone))return a.clone();b="array"==b?[]:{};for(var c in a)b[c]=nb(a[c]);return b}return a}
var ob="constructor hasOwnProperty isPrototypeOf propertyIsEnumerable toLocaleString toString valueOf".split(" ");function pb(a,b){for(var c,d,e=1;e<arguments.length;e++){d=arguments[e];for(c in d)a[c]=d[c];for(var f=0;f<ob.length;f++)c=ob[f],Object.prototype.hasOwnProperty.call(d,c)&&(a[c]=d[c])}}
;var qb;function rb(){if(void 0===qb){var a=null,b=y.trustedTypes;if(b&&b.createPolicy){try{a=b.createPolicy("goog#html",{createHTML:Va,createScript:Va,createScriptURL:Va})}catch(c){y.console&&y.console.error(c.message)}qb=a}else qb=a}return qb}
;function sb(a,b){this.f=a===tb&&b||"";this.g=ub}
sb.prototype.M=!0;sb.prototype.L=function(){return this.f.toString()};
sb.prototype.ja=!0;sb.prototype.ga=function(){return 1};
function vb(a){if(a instanceof sb&&a.constructor===sb&&a.g===ub)return a.f;Ja(a);return"type_error:TrustedResourceUrl"}
var ub={},tb={};var wb=String.prototype.trim?function(a){return a.trim()}:function(a){return/^[\s\xa0]*([\s\S]*?)[\s\xa0]*$/.exec(a)[1]};
function xb(a,b){if(b)a=a.replace(yb,"&amp;").replace(zb,"&lt;").replace(Ab,"&gt;").replace(Bb,"&quot;").replace(Cb,"&#39;").replace(Db,"&#0;");else{if(!Eb.test(a))return a;-1!=a.indexOf("&")&&(a=a.replace(yb,"&amp;"));-1!=a.indexOf("<")&&(a=a.replace(zb,"&lt;"));-1!=a.indexOf(">")&&(a=a.replace(Ab,"&gt;"));-1!=a.indexOf('"')&&(a=a.replace(Bb,"&quot;"));-1!=a.indexOf("'")&&(a=a.replace(Cb,"&#39;"));-1!=a.indexOf("\x00")&&(a=a.replace(Db,"&#0;"))}return a}
var yb=/&/g,zb=/</g,Ab=/>/g,Bb=/"/g,Cb=/'/g,Db=/\x00/g,Eb=/[\x00&<>"']/;function I(a,b){this.f=a===Fb&&b||"";this.g=Gb}
I.prototype.M=!0;I.prototype.L=function(){return this.f.toString()};
I.prototype.ja=!0;I.prototype.ga=function(){return 1};
function Hb(a){if(a instanceof I&&a.constructor===I&&a.g===Gb)return a.f;Ja(a);return"type_error:SafeUrl"}
var Ib=/^(?:audio\/(?:3gpp2|3gpp|aac|L16|midi|mp3|mp4|mpeg|oga|ogg|opus|x-m4a|x-matroska|x-wav|wav|webm)|font\/\w+|image\/(?:bmp|gif|jpeg|jpg|png|tiff|webp|x-icon)|text\/csv|video\/(?:mpeg|mp4|ogg|webm|quicktime|x-matroska))(?:;\w+=(?:\w+|"[\w;,= ]+"))*$/i,Jb=/^data:(.*);base64,[a-z0-9+\/]+=*$/i,Kb=/^(?:(?:https?|mailto|ftp):|[^:/?#]*(?:[/?#]|$))/i;function Lb(a){if(a instanceof I)return a;a="object"==typeof a&&a.M?a.L():String(a);Kb.test(a)||(a="about:invalid#zClosurez");return new I(Fb,a)}
var Gb={},Mb=new I(Fb,"about:invalid#zClosurez"),Fb={};var Nb;a:{var Ob=y.navigator;if(Ob){var Pb=Ob.userAgent;if(Pb){Nb=Pb;break a}}Nb=""}function J(a){return-1!=Nb.indexOf(a)}
;function Qb(){this.f="";this.h=Rb;this.g=null}
Qb.prototype.ja=!0;Qb.prototype.ga=function(){return this.g};
Qb.prototype.M=!0;Qb.prototype.L=function(){return this.f.toString()};
var Rb={};function Sb(a,b){var c=new Qb,d=rb();c.f=d?d.createHTML(a):a;c.g=b;return c}
;function Tb(a,b){var c=b instanceof I?b:Lb(b);a.href=Hb(c)}
function Ub(a,b){a.src=vb(b);var c;(c=a.ownerDocument&&a.ownerDocument.defaultView)&&c!=y?c=Ga(c.document):(null===Fa&&(Fa=Ga(y.document)),c=Fa);c&&a.setAttribute("nonce",c)}
;function Wb(a){return a=xb(a,void 0)}
function Xb(a){for(var b=0,c=0;c<a.length;++c)b=31*b+a.charCodeAt(c)>>>0;return b}
;var Yb=/^(?:([^:/?#.]+):)?(?:\/\/(?:([^\\/?#]*)@)?([^\\/?#]*?)(?::([0-9]+))?(?=[\\/?#]|$))?([^?#]+)?(?:\?([^#]*))?(?:#([\s\S]*))?$/;function Zb(a){return a?decodeURI(a):a}
function K(a){return Zb(a.match(Yb)[3]||null)}
function $b(a,b,c){if(Array.isArray(b))for(var d=0;d<b.length;d++)$b(a,String(b[d]),c);else null!=b&&c.push(a+(""===b?"":"="+encodeURIComponent(String(b))))}
function ac(a){var b=[],c;for(c in a)$b(c,a[c],b);return b.join("&")}
function bc(a,b){var c=ac(b);if(c){var d=a.indexOf("#");0>d&&(d=a.length);var e=a.indexOf("?");if(0>e||e>d){e=d;var f=""}else f=a.substring(e+1,d);d=[a.substr(0,e),f,a.substr(d)];e=d[1];d[1]=c?e?e+"&"+c:c:e;c=d[0]+(d[1]?"?"+d[1]:"")+d[2]}else c=a;return c}
var cc=/#|$/;function dc(a,b){var c=a.search(cc);a:{var d=0;for(var e=b.length;0<=(d=a.indexOf(b,d))&&d<c;){var f=a.charCodeAt(d-1);if(38==f||63==f)if(f=a.charCodeAt(d+e),!f||61==f||38==f||35==f)break a;d+=e+1}d=-1}if(0>d)return null;e=a.indexOf("&",d);if(0>e||e>c)e=c;d+=b.length+1;return decodeURIComponent(a.substr(d,e-d).replace(/\+/g," "))}
;var ec=J("Opera"),fc=J("Trident")||J("MSIE"),gc=J("Edge"),hc=J("Gecko")&&!(-1!=Nb.toLowerCase().indexOf("webkit")&&!J("Edge"))&&!(J("Trident")||J("MSIE"))&&!J("Edge"),ic=-1!=Nb.toLowerCase().indexOf("webkit")&&!J("Edge");function jc(){var a=y.document;return a?a.documentMode:void 0}
var kc;a:{var lc="",mc=function(){var a=Nb;if(hc)return/rv:([^\);]+)(\)|;)/.exec(a);if(gc)return/Edge\/([\d\.]+)/.exec(a);if(fc)return/\b(?:MSIE|rv)[: ]([^\);]+)(\)|;)/.exec(a);if(ic)return/WebKit\/(\S+)/.exec(a);if(ec)return/(?:Version)[ \/]?(\S+)/.exec(a)}();
mc&&(lc=mc?mc[1]:"");if(fc){var nc=jc();if(null!=nc&&nc>parseFloat(lc)){kc=String(nc);break a}}kc=lc}var oc=kc,pc;if(y.document&&fc){var qc=jc();pc=qc?qc:parseInt(oc,10)||void 0}else pc=void 0;var rc=pc;var sc=J("iPhone")&&!J("iPod")&&!J("iPad")||J("iPod"),tc=J("iPad");var uc={},vc=null;var L=window;function wc(a){var b=A("window.location.href");null==a&&(a='Unknown Error of type "null/undefined"');if("string"===typeof a)return{message:a,name:"Unknown error",lineNumber:"Not available",fileName:b,stack:"Not available"};var c=!1;try{var d=a.lineNumber||a.line||"Not available"}catch(g){d="Not available",c=!0}try{var e=a.fileName||a.filename||a.sourceURL||y.$googDebugFname||b}catch(g){e="Not available",c=!0}b=xc(a);if(!(!c&&a.lineNumber&&a.fileName&&a.stack&&a.message&&a.name)){c=a.message;if(null==
c){if(a.constructor&&a.constructor instanceof Function){if(a.constructor.name)c=a.constructor.name;else if(c=a.constructor,yc[c])c=yc[c];else{c=String(c);if(!yc[c]){var f=/function\s+([^\(]+)/m.exec(c);yc[c]=f?f[1]:"[Anonymous]"}c=yc[c]}c='Unknown Error of type "'+c+'"'}else c="Unknown Error of unknown type";"function"===typeof a.toString&&Object.prototype.toString!==a.toString&&(c+=": "+a.toString())}return{message:c,name:a.name||"UnknownError",lineNumber:d,fileName:e,stack:b||"Not available"}}a.stack=
b;return a}
function xc(a,b){b||(b={});b[zc(a)]=!0;var c=a.stack||"",d=a.vb;d&&!b[zc(d)]&&(c+="\nCaused by: ",d.stack&&0==d.stack.indexOf(d.toString())||(c+="string"===typeof d?d:d.message+"\n"),c+=xc(d,b));return c}
function zc(a){var b="";"function"===typeof a.toString&&(b=""+a);return b+a.stack}
var yc={};function Ac(a){this.f=a||{cookie:""}}
n=Ac.prototype;n.isEnabled=function(){return navigator.cookieEnabled};
n.set=function(a,b,c){var d=!1;if("object"===typeof c){var e=c.Bb;d=c.secure||!1;var f=c.domain||void 0;var g=c.path||void 0;var h=c.ra}if(/[;=\s]/.test(a))throw Error('Invalid cookie name "'+a+'"');if(/[;\r\n]/.test(b))throw Error('Invalid cookie value "'+b+'"');void 0===h&&(h=-1);c=f?";domain="+f:"";g=g?";path="+g:"";d=d?";secure":"";h=0>h?"":0==h?";expires="+(new Date(1970,1,1)).toUTCString():";expires="+(new Date(D()+1E3*h)).toUTCString();this.f.cookie=a+"="+b+c+g+h+d+(null!=e?";samesite="+e:
"")};
n.get=function(a,b){for(var c=a+"=",d=(this.f.cookie||"").split(";"),e=0,f;e<d.length;e++){f=wb(d[e]);if(0==f.lastIndexOf(c,0))return f.substr(c.length);if(f==a)return""}return b};
n.remove=function(a,b,c){var d=void 0!==this.get(a);this.set(a,"",{ra:0,path:b,domain:c});return d};
n.isEmpty=function(){return!this.f.cookie};
n.clear=function(){for(var a=(this.f.cookie||"").split(";"),b=[],c=[],d,e,f=0;f<a.length;f++)e=wb(a[f]),d=e.indexOf("="),-1==d?(b.push(""),c.push(e)):(b.push(e.substring(0,d)),c.push(e.substring(d+1)));for(a=b.length-1;0<=a;a--)this.remove(b[a])};
var Bc=new Ac("undefined"==typeof document?null:document);var Cc=!fc||9<=Number(rc);function Dc(a,b){this.x=void 0!==a?a:0;this.y=void 0!==b?b:0}
n=Dc.prototype;n.clone=function(){return new Dc(this.x,this.y)};
n.equals=function(a){return a instanceof Dc&&(this==a?!0:this&&a?this.x==a.x&&this.y==a.y:!1)};
n.ceil=function(){this.x=Math.ceil(this.x);this.y=Math.ceil(this.y);return this};
n.floor=function(){this.x=Math.floor(this.x);this.y=Math.floor(this.y);return this};
n.round=function(){this.x=Math.round(this.x);this.y=Math.round(this.y);return this};function Ec(a,b){this.width=a;this.height=b}
n=Ec.prototype;n.clone=function(){return new Ec(this.width,this.height)};
n.aspectRatio=function(){return this.width/this.height};
n.isEmpty=function(){return!(this.width*this.height)};
n.ceil=function(){this.width=Math.ceil(this.width);this.height=Math.ceil(this.height);return this};
n.floor=function(){this.width=Math.floor(this.width);this.height=Math.floor(this.height);return this};
n.round=function(){this.width=Math.round(this.width);this.height=Math.round(this.height);return this};function Fc(a){var b=document;return"string"===typeof a?b.getElementById(a):a}
function Gc(a,b){fb(b,function(c,d){c&&"object"==typeof c&&c.M&&(c=c.L());"style"==d?a.style.cssText=c:"class"==d?a.className=c:"for"==d?a.htmlFor=c:Hc.hasOwnProperty(d)?a.setAttribute(Hc[d],c):0==d.lastIndexOf("aria-",0)||0==d.lastIndexOf("data-",0)?a.setAttribute(d,c):a[d]=c})}
var Hc={cellpadding:"cellPadding",cellspacing:"cellSpacing",colspan:"colSpan",frameborder:"frameBorder",height:"height",maxlength:"maxLength",nonce:"nonce",role:"role",rowspan:"rowSpan",type:"type",usemap:"useMap",valign:"vAlign",width:"width"};
function Ic(a,b,c){var d=arguments,e=document,f=String(d[0]),g=d[1];if(!Cc&&g&&(g.name||g.type)){f=["<",f];g.name&&f.push(' name="',Wb(g.name),'"');if(g.type){f.push(' type="',Wb(g.type),'"');var h={};pb(h,g);delete h.type;g=h}f.push(">");f=f.join("")}f=Jc(e,f);g&&("string"===typeof g?f.className=g:Array.isArray(g)?f.className=g.join(" "):Gc(f,g));2<d.length&&Kc(e,f,d);return f}
function Kc(a,b,c){function d(g){g&&b.appendChild("string"===typeof g?a.createTextNode(g):g)}
for(var e=2;e<c.length;e++){var f=c[e];!Ka(f)||Ma(f)&&0<f.nodeType?d(f):H(Lc(f)?db(f):f,d)}}
function Jc(a,b){b=String(b);"application/xhtml+xml"===a.contentType&&(b=b.toLowerCase());return a.createElement(b)}
function Lc(a){if(a&&"number"==typeof a.length){if(Ma(a))return"function"==typeof a.item||"string"==typeof a.item;if(La(a))return"function"==typeof a.item}return!1}
function Mc(a,b){for(var c=0;a;){if(b(a))return a;a=a.parentNode;c++}return null}
;function Nc(a){Oc();var b=rb();a=b?b.createScriptURL(a):a;return new sb(tb,a)}
var Oc=Ha;function Pc(a){var b=Qc;if(b)for(var c in b)Object.prototype.hasOwnProperty.call(b,c)&&a.call(void 0,b[c],c,b)}
function Rc(){var a=[];Pc(function(b){a.push(b)});
return a}
var Qc={hb:"allow-forms",ib:"allow-modals",jb:"allow-orientation-lock",kb:"allow-pointer-lock",lb:"allow-popups",mb:"allow-popups-to-escape-sandbox",nb:"allow-presentation",ob:"allow-same-origin",pb:"allow-scripts",qb:"allow-top-navigation",rb:"allow-top-navigation-by-user-activation"},Sc=Xa(function(){return Rc()});
function Tc(){var a=Jc(document,"IFRAME"),b={};H(Sc(),function(c){a.sandbox&&a.sandbox.supports&&a.sandbox.supports(c)&&(b[c]=!0)});
return b}
;function M(){this.g=this.g;this.B=this.B}
M.prototype.g=!1;M.prototype.dispose=function(){this.g||(this.g=!0,this.o())};
function Uc(a,b){a.g?b():(a.B||(a.B=[]),a.B.push(b))}
M.prototype.o=function(){if(this.B)for(;this.B.length;)this.B.shift()()};
function Vc(a){a&&"function"==typeof a.dispose&&a.dispose()}
function Wc(a){for(var b=0,c=arguments.length;b<c;++b){var d=arguments[b];Ka(d)?Wc.apply(null,d):Vc(d)}}
;function N(a,b){var c=void 0;return new (c||(c=Promise))(function(d,e){function f(k){try{h(b.next(k))}catch(l){e(l)}}
function g(k){try{h(b["throw"](k))}catch(l){e(l)}}
function h(k){k.done?d(k.value):(new c(function(l){l(k.value)})).then(f,g)}
h((b=b.apply(a,void 0)).next())})}
;var Xc={};function Yc(){}
function Zc(a,b){if(b!==Xc)throw Error("Bad secret");this.f=a}
v(Zc,Yc);Zc.prototype.toString=function(){return this.f};new Zc("about:blank",Xc);new Zc("about:invalid#zTSz",Xc);function $c(a){"number"==typeof a&&(a=Math.round(a)+"px");return a}
;var ad=(new Date).getTime();function bd(a){if(!a)return"";a=a.split("#")[0].split("?")[0];a=a.toLowerCase();0==a.indexOf("//")&&(a=window.location.protocol+a);/^[\w\-]*:\/\//.test(a)||(a=window.location.href);var b=a.substring(a.indexOf("://")+3),c=b.indexOf("/");-1!=c&&(b=b.substring(0,c));a=a.substring(0,a.indexOf("://"));if("http"!==a&&"https"!==a&&"chrome-extension"!==a&&"file"!==a&&"android-app"!==a&&"chrome-search"!==a&&"chrome-untrusted"!==a&&"chrome"!==a&&"app"!==a&&"devtools"!==a)throw Error("Invalid URI scheme in origin: "+
a);c="";var d=b.indexOf(":");if(-1!=d){var e=b.substring(d+1);b=b.substring(0,d);if("http"===a&&"80"!==e||"https"===a&&"443"!==e)c=":"+e}return a+"://"+b+c}
;function cd(){function a(){e[0]=1732584193;e[1]=4023233417;e[2]=2562383102;e[3]=271733878;e[4]=3285377520;m=l=0}
function b(p){for(var u=g,q=0;64>q;q+=4)u[q/4]=p[q]<<24|p[q+1]<<16|p[q+2]<<8|p[q+3];for(q=16;80>q;q++)p=u[q-3]^u[q-8]^u[q-14]^u[q-16],u[q]=(p<<1|p>>>31)&4294967295;p=e[0];var B=e[1],E=e[2],U=e[3],kd=e[4];for(q=0;80>q;q++){if(40>q)if(20>q){var Ua=U^B&(E^U);var Vb=1518500249}else Ua=B^E^U,Vb=1859775393;else 60>q?(Ua=B&E|U&(B|E),Vb=2400959708):(Ua=B^E^U,Vb=3395469782);Ua=((p<<5|p>>>27)&4294967295)+Ua+kd+Vb+u[q]&4294967295;kd=U;U=E;E=(B<<30|B>>>2)&4294967295;B=p;p=Ua}e[0]=e[0]+p&4294967295;e[1]=e[1]+
B&4294967295;e[2]=e[2]+E&4294967295;e[3]=e[3]+U&4294967295;e[4]=e[4]+kd&4294967295}
function c(p,u){if("string"===typeof p){p=unescape(encodeURIComponent(p));for(var q=[],B=0,E=p.length;B<E;++B)q.push(p.charCodeAt(B));p=q}u||(u=p.length);q=0;if(0==l)for(;q+64<u;)b(p.slice(q,q+64)),q+=64,m+=64;for(;q<u;)if(f[l++]=p[q++],m++,64==l)for(l=0,b(f);q+64<u;)b(p.slice(q,q+64)),q+=64,m+=64}
function d(){var p=[],u=8*m;56>l?c(h,56-l):c(h,64-(l-56));for(var q=63;56<=q;q--)f[q]=u&255,u>>>=8;b(f);for(q=u=0;5>q;q++)for(var B=24;0<=B;B-=8)p[u++]=e[q]>>B&255;return p}
for(var e=[],f=[],g=[],h=[128],k=1;64>k;++k)h[k]=0;var l,m;a();return{reset:a,update:c,digest:d,Ca:function(){for(var p=d(),u="",q=0;q<p.length;q++)u+="0123456789ABCDEF".charAt(Math.floor(p[q]/16))+"0123456789ABCDEF".charAt(p[q]%16);return u}}}
;function dd(a,b,c){var d=[],e=[];if(1==(Array.isArray(c)?2:1))return e=[b,a],H(d,function(h){e.push(h)}),ed(e.join(" "));
var f=[],g=[];H(c,function(h){g.push(h.key);f.push(h.value)});
c=Math.floor((new Date).getTime()/1E3);e=0==f.length?[c,b,a]:[f.join(":"),c,b,a];H(d,function(h){e.push(h)});
a=ed(e.join(" "));a=[c,a];0==g.length||a.push(g.join(""));return a.join("_")}
function ed(a){var b=cd();b.update(a);return b.Ca().toLowerCase()}
;function fd(a){var b=bd(String(y.location.href)),c;(c=y.__SAPISID||y.__APISID||y.__OVERRIDE_SID)?c=!0:(c=new Ac(document),c=c.get("SAPISID")||c.get("APISID")||c.get("__Secure-3PAPISID")||c.get("SID"),c=!!c);if(c&&(c=(b=0==b.indexOf("https:")||0==b.indexOf("chrome-extension:"))?y.__SAPISID:y.__APISID,c||(c=new Ac(document),c=c.get(b?"SAPISID":"APISID")||c.get("__Secure-3PAPISID")),c)){b=b?"SAPISIDHASH":"APISIDHASH";var d=String(y.location.href);return d&&c&&b?[b,dd(bd(d),c,a||null)].join(" "):null}return null}
;function gd(){this.g=[];this.f=-1}
gd.prototype.set=function(a,b){b=void 0===b?!0:b;0<=a&&52>a&&0===a%1&&this.g[a]!=b&&(this.g[a]=b,this.f=-1)};
gd.prototype.get=function(a){return!!this.g[a]};
function hd(a){-1==a.f&&(a.f=ab(a.g,function(b,c,d){return c?b+Math.pow(2,d):b},0));
return a.f}
;function id(a,b){this.h=a;this.i=b;this.g=0;this.f=null}
id.prototype.get=function(){if(0<this.g){this.g--;var a=this.f;this.f=a.next;a.next=null}else a=this.h();return a};
function jd(a,b){a.i(b);100>a.g&&(a.g++,b.next=a.f,a.f=b)}
;function ld(a){y.setTimeout(function(){throw a;},0)}
var md;
function nd(){var a=y.MessageChannel;"undefined"===typeof a&&"undefined"!==typeof window&&window.postMessage&&window.addEventListener&&!J("Presto")&&(a=function(){var e=Jc(document,"IFRAME");e.style.display="none";document.documentElement.appendChild(e);var f=e.contentWindow;e=f.document;e.open();e.close();var g="callImmediate"+Math.random(),h="file:"==f.location.protocol?"*":f.location.protocol+"//"+f.location.host;e=C(function(k){if(("*"==h||k.origin==h)&&k.data==g)this.port1.onmessage()},this);
f.addEventListener("message",e,!1);this.port1={};this.port2={postMessage:function(){f.postMessage(g,h)}}});
if("undefined"!==typeof a&&!J("Trident")&&!J("MSIE")){var b=new a,c={},d=c;b.port1.onmessage=function(){if(void 0!==c.next){c=c.next;var e=c.oa;c.oa=null;e()}};
return function(e){d.next={oa:e};d=d.next;b.port2.postMessage(0)}}return function(e){y.setTimeout(e,0)}}
;function od(){this.g=this.f=null}
var qd=new id(function(){return new pd},function(a){a.reset()});
od.prototype.add=function(a,b){var c=qd.get();c.set(a,b);this.g?this.g.next=c:this.f=c;this.g=c};
od.prototype.remove=function(){var a=null;this.f&&(a=this.f,this.f=this.f.next,this.f||(this.g=null),a.next=null);return a};
function pd(){this.next=this.scope=this.f=null}
pd.prototype.set=function(a,b){this.f=a;this.scope=b;this.next=null};
pd.prototype.reset=function(){this.next=this.scope=this.f=null};function rd(a,b){sd||td();ud||(sd(),ud=!0);vd.add(a,b)}
var sd;function td(){if(y.Promise&&y.Promise.resolve){var a=y.Promise.resolve(void 0);sd=function(){a.then(wd)}}else sd=function(){var b=wd;
!La(y.setImmediate)||y.Window&&y.Window.prototype&&!J("Edge")&&y.Window.prototype.setImmediate==y.setImmediate?(md||(md=nd()),md(b)):y.setImmediate(b)}}
var ud=!1,vd=new od;function wd(){for(var a;a=vd.remove();){try{a.f.call(a.scope)}catch(b){ld(b)}jd(qd,a)}ud=!1}
;function xd(){this.g=-1}
;function yd(){this.g=64;this.f=[];this.l=[];this.m=[];this.i=[];this.i[0]=128;for(var a=1;a<this.g;++a)this.i[a]=0;this.j=this.h=0;this.reset()}
F(yd,xd);yd.prototype.reset=function(){this.f[0]=1732584193;this.f[1]=4023233417;this.f[2]=2562383102;this.f[3]=271733878;this.f[4]=3285377520;this.j=this.h=0};
function zd(a,b,c){c||(c=0);var d=a.m;if("string"===typeof b)for(var e=0;16>e;e++)d[e]=b.charCodeAt(c)<<24|b.charCodeAt(c+1)<<16|b.charCodeAt(c+2)<<8|b.charCodeAt(c+3),c+=4;else for(e=0;16>e;e++)d[e]=b[c]<<24|b[c+1]<<16|b[c+2]<<8|b[c+3],c+=4;for(e=16;80>e;e++){var f=d[e-3]^d[e-8]^d[e-14]^d[e-16];d[e]=(f<<1|f>>>31)&4294967295}b=a.f[0];c=a.f[1];var g=a.f[2],h=a.f[3],k=a.f[4];for(e=0;80>e;e++){if(40>e)if(20>e){f=h^c&(g^h);var l=1518500249}else f=c^g^h,l=1859775393;else 60>e?(f=c&g|h&(c|g),l=2400959708):
(f=c^g^h,l=3395469782);f=(b<<5|b>>>27)+f+k+l+d[e]&4294967295;k=h;h=g;g=(c<<30|c>>>2)&4294967295;c=b;b=f}a.f[0]=a.f[0]+b&4294967295;a.f[1]=a.f[1]+c&4294967295;a.f[2]=a.f[2]+g&4294967295;a.f[3]=a.f[3]+h&4294967295;a.f[4]=a.f[4]+k&4294967295}
yd.prototype.update=function(a,b){if(null!=a){void 0===b&&(b=a.length);for(var c=b-this.g,d=0,e=this.l,f=this.h;d<b;){if(0==f)for(;d<=c;)zd(this,a,d),d+=this.g;if("string"===typeof a)for(;d<b;){if(e[f]=a.charCodeAt(d),++f,++d,f==this.g){zd(this,e);f=0;break}}else for(;d<b;)if(e[f]=a[d],++f,++d,f==this.g){zd(this,e);f=0;break}}this.h=f;this.j+=b}};
yd.prototype.digest=function(){var a=[],b=8*this.j;56>this.h?this.update(this.i,56-this.h):this.update(this.i,this.g-(this.h-56));for(var c=this.g-1;56<=c;c--)this.l[c]=b&255,b/=256;zd(this,this.l);for(c=b=0;5>c;c++)for(var d=24;0<=d;d-=8)a[b]=this.f[c]>>d&255,++b;return a};var Ad="StopIteration"in y?y.StopIteration:{message:"StopIteration",stack:""};function Bd(){}
Bd.prototype.next=function(){throw Ad;};
Bd.prototype.I=function(){return this};
function Cd(a){if(a instanceof Bd)return a;if("function"==typeof a.I)return a.I(!1);if(Ka(a)){var b=0,c=new Bd;c.next=function(){for(;;){if(b>=a.length)throw Ad;if(b in a)return a[b++];b++}};
return c}throw Error("Not implemented");}
function Dd(a,b){if(Ka(a))try{H(a,b,void 0)}catch(c){if(c!==Ad)throw c;}else{a=Cd(a);try{for(;;)b.call(void 0,a.next(),void 0,a)}catch(c){if(c!==Ad)throw c;}}}
function Ed(a){if(Ka(a))return db(a);a=Cd(a);var b=[];Dd(a,function(c){b.push(c)});
return b}
;function Fd(a,b){this.h={};this.f=[];this.J=this.g=0;var c=arguments.length;if(1<c){if(c%2)throw Error("Uneven number of arguments");for(var d=0;d<c;d+=2)this.set(arguments[d],arguments[d+1])}else if(a)if(a instanceof Fd)for(c=Gd(a),d=0;d<c.length;d++)this.set(c[d],a.get(c[d]));else for(d in a)this.set(d,a[d])}
function Gd(a){Hd(a);return a.f.concat()}
n=Fd.prototype;n.equals=function(a,b){if(this===a)return!0;if(this.g!=a.g)return!1;var c=b||Id;Hd(this);for(var d,e=0;d=this.f[e];e++)if(!c(this.get(d),a.get(d)))return!1;return!0};
function Id(a,b){return a===b}
n.isEmpty=function(){return 0==this.g};
n.clear=function(){this.h={};this.J=this.g=this.f.length=0};
n.remove=function(a){return Object.prototype.hasOwnProperty.call(this.h,a)?(delete this.h[a],this.g--,this.J++,this.f.length>2*this.g&&Hd(this),!0):!1};
function Hd(a){if(a.g!=a.f.length){for(var b=0,c=0;b<a.f.length;){var d=a.f[b];Object.prototype.hasOwnProperty.call(a.h,d)&&(a.f[c++]=d);b++}a.f.length=c}if(a.g!=a.f.length){var e={};for(c=b=0;b<a.f.length;)d=a.f[b],Object.prototype.hasOwnProperty.call(e,d)||(a.f[c++]=d,e[d]=1),b++;a.f.length=c}}
n.get=function(a,b){return Object.prototype.hasOwnProperty.call(this.h,a)?this.h[a]:b};
n.set=function(a,b){Object.prototype.hasOwnProperty.call(this.h,a)||(this.g++,this.f.push(a),this.J++);this.h[a]=b};
n.forEach=function(a,b){for(var c=Gd(this),d=0;d<c.length;d++){var e=c[d],f=this.get(e);a.call(b,f,e,this)}};
n.clone=function(){return new Fd(this)};
n.I=function(a){Hd(this);var b=0,c=this.J,d=this,e=new Bd;e.next=function(){if(c!=d.J)throw Error("The map has changed since the iterator was created");if(b>=d.f.length)throw Ad;var f=d.f[b++];return a?f:d.h[f]};
return e};function Jd(a){return"string"==typeof a.className?a.className:a.getAttribute&&a.getAttribute("class")||""}
function Kd(a,b){"string"==typeof a.className?a.className=b:a.setAttribute&&a.setAttribute("class",b)}
function Ld(a,b){if(a.classList)var c=a.classList.contains(b);else c=a.classList?a.classList:Jd(a).match(/\S+/g)||[],c=0<=Ya(c,b);return c}
function Md(){var a=document.body;a.classList?a.classList.remove("inverted-hdpi"):Ld(a,"inverted-hdpi")&&Kd(a,Za(a.classList?a.classList:Jd(a).match(/\S+/g)||[],function(b){return"inverted-hdpi"!=b}).join(" "))}
;function Nd(a){var b=[];Od(new Pd,a,b);return b.join("")}
function Pd(){}
function Od(a,b,c){if(null==b)c.push("null");else{if("object"==typeof b){if(Array.isArray(b)){var d=b;b=d.length;c.push("[");for(var e="",f=0;f<b;f++)c.push(e),Od(a,d[f],c),e=",";c.push("]");return}if(b instanceof String||b instanceof Number||b instanceof Boolean)b=b.valueOf();else{c.push("{");e="";for(d in b)Object.prototype.hasOwnProperty.call(b,d)&&(f=b[d],"function"!=typeof f&&(c.push(e),Qd(d,c),c.push(":"),Od(a,f,c),e=","));c.push("}");return}}switch(typeof b){case "string":Qd(b,c);break;case "number":c.push(isFinite(b)&&
!isNaN(b)?String(b):"null");break;case "boolean":c.push(String(b));break;case "function":c.push("null");break;default:throw Error("Unknown type: "+typeof b);}}}
var Rd={'"':'\\"',"\\":"\\\\","/":"\\/","\b":"\\b","\f":"\\f","\n":"\\n","\r":"\\r","\t":"\\t","\x0B":"\\u000b"},Sd=/\uffff/.test("\uffff")?/[\\"\x00-\x1f\x7f-\uffff]/g:/[\\"\x00-\x1f\x7f-\xff]/g;function Qd(a,b){b.push('"',a.replace(Sd,function(c){var d=Rd[c];d||(d="\\u"+(c.charCodeAt(0)|65536).toString(16).substr(1),Rd[c]=d);return d}),'"')}
;function Td(a){if(!a)return!1;try{return!!a.$goog_Thenable}catch(b){return!1}}
;function O(a){this.f=0;this.m=void 0;this.i=this.g=this.h=null;this.j=this.l=!1;if(a!=Ha)try{var b=this;a.call(void 0,function(c){Ud(b,2,c)},function(c){Ud(b,3,c)})}catch(c){Ud(this,3,c)}}
function Vd(){this.next=this.context=this.onRejected=this.g=this.f=null;this.h=!1}
Vd.prototype.reset=function(){this.context=this.onRejected=this.g=this.f=null;this.h=!1};
var Wd=new id(function(){return new Vd},function(a){a.reset()});
function Xd(a,b,c){var d=Wd.get();d.g=a;d.onRejected=b;d.context=c;return d}
function Yd(a){if(a instanceof O)return a;var b=new O(Ha);Ud(b,2,a);return b}
function Zd(a){return new O(function(b,c){c(a)})}
O.prototype.then=function(a,b,c){return $d(this,La(a)?a:null,La(b)?b:null,c)};
O.prototype.$goog_Thenable=!0;function ae(a,b){return $d(a,null,b,void 0)}
O.prototype.cancel=function(a){if(0==this.f){var b=new be(a);rd(function(){ce(this,b)},this)}};
function ce(a,b){if(0==a.f)if(a.h){var c=a.h;if(c.g){for(var d=0,e=null,f=null,g=c.g;g&&(g.h||(d++,g.f==a&&(e=g),!(e&&1<d)));g=g.next)e||(f=g);e&&(0==c.f&&1==d?ce(c,b):(f?(d=f,d.next==c.i&&(c.i=d),d.next=d.next.next):de(c),ee(c,e,3,b)))}a.h=null}else Ud(a,3,b)}
function fe(a,b){a.g||2!=a.f&&3!=a.f||ge(a);a.i?a.i.next=b:a.g=b;a.i=b}
function $d(a,b,c,d){var e=Xd(null,null,null);e.f=new O(function(f,g){e.g=b?function(h){try{var k=b.call(d,h);f(k)}catch(l){g(l)}}:f;
e.onRejected=c?function(h){try{var k=c.call(d,h);void 0===k&&h instanceof be?g(h):f(k)}catch(l){g(l)}}:g});
e.f.h=a;fe(a,e);return e.f}
O.prototype.u=function(a){this.f=0;Ud(this,2,a)};
O.prototype.C=function(a){this.f=0;Ud(this,3,a)};
function Ud(a,b,c){if(0==a.f){a===c&&(b=3,c=new TypeError("Promise cannot resolve to itself"));a.f=1;a:{var d=c,e=a.u,f=a.C;if(d instanceof O){fe(d,Xd(e||Ha,f||null,a));var g=!0}else if(Td(d))d.then(e,f,a),g=!0;else{if(Ma(d))try{var h=d.then;if(La(h)){he(d,h,e,f,a);g=!0;break a}}catch(k){f.call(a,k);g=!0;break a}g=!1}}g||(a.m=c,a.f=b,a.h=null,ge(a),3!=b||c instanceof be||ie(a,c))}}
function he(a,b,c,d,e){function f(k){h||(h=!0,d.call(e,k))}
function g(k){h||(h=!0,c.call(e,k))}
var h=!1;try{b.call(a,g,f)}catch(k){f(k)}}
function ge(a){a.l||(a.l=!0,rd(a.B,a))}
function de(a){var b=null;a.g&&(b=a.g,a.g=b.next,b.next=null);a.g||(a.i=null);return b}
O.prototype.B=function(){for(var a;a=de(this);)ee(this,a,this.f,this.m);this.l=!1};
function ee(a,b,c,d){if(3==c&&b.onRejected&&!b.h)for(;a&&a.j;a=a.h)a.j=!1;if(b.f)b.f.h=null,je(b,c,d);else try{b.h?b.g.call(b.context):je(b,c,d)}catch(e){ke.call(null,e)}jd(Wd,b)}
function je(a,b,c){2==b?a.g.call(a.context,c):a.onRejected&&a.onRejected.call(a.context,c)}
function ie(a,b){a.j=!0;rd(function(){a.j&&ke.call(null,b)})}
var ke=ld;function be(a){G.call(this,a)}
F(be,G);be.prototype.name="cancel";function P(a){M.call(this);this.l=1;this.i=[];this.j=0;this.f=[];this.h={};this.m=!!a}
F(P,M);n=P.prototype;n.subscribe=function(a,b,c){var d=this.h[a];d||(d=this.h[a]=[]);var e=this.l;this.f[e]=a;this.f[e+1]=b;this.f[e+2]=c;this.l=e+3;d.push(e);return e};
function le(a,b,c,d){if(b=a.h[b]){var e=a.f;(b=bb(b,function(f){return e[f+1]==c&&e[f+2]==d}))&&a.P(b)}}
n.P=function(a){var b=this.f[a];if(b){var c=this.h[b];0!=this.j?(this.i.push(a),this.f[a+1]=Ha):(c&&cb(c,a),delete this.f[a],delete this.f[a+1],delete this.f[a+2])}return!!b};
n.O=function(a,b){var c=this.h[a];if(c){for(var d=Array(arguments.length-1),e=1,f=arguments.length;e<f;e++)d[e-1]=arguments[e];if(this.m)for(e=0;e<c.length;e++){var g=c[e];me(this.f[g+1],this.f[g+2],d)}else{this.j++;try{for(e=0,f=c.length;e<f;e++)g=c[e],this.f[g+1].apply(this.f[g+2],d)}finally{if(this.j--,0<this.i.length&&0==this.j)for(;c=this.i.pop();)this.P(c)}}return 0!=e}return!1};
function me(a,b,c){rd(function(){a.apply(b,c)})}
n.clear=function(a){if(a){var b=this.h[a];b&&(H(b,this.P,this),delete this.h[a])}else this.f.length=0,this.h={}};
n.o=function(){P.N.o.call(this);this.clear();this.i.length=0};function ne(a){this.f=a}
ne.prototype.set=function(a,b){void 0===b?this.f.remove(a):this.f.set(a,Nd(b))};
ne.prototype.get=function(a){try{var b=this.f.get(a)}catch(c){return}if(null!==b)try{return JSON.parse(b)}catch(c){throw"Storage: Invalid value was encountered";}};
ne.prototype.remove=function(a){this.f.remove(a)};function oe(a){this.f=a}
F(oe,ne);function pe(a){this.data=a}
function qe(a){return void 0===a||a instanceof pe?a:new pe(a)}
oe.prototype.set=function(a,b){oe.N.set.call(this,a,qe(b))};
oe.prototype.g=function(a){a=oe.N.get.call(this,a);if(void 0===a||a instanceof Object)return a;throw"Storage: Invalid value was encountered";};
oe.prototype.get=function(a){if(a=this.g(a)){if(a=a.data,void 0===a)throw"Storage: Invalid value was encountered";}else a=void 0;return a};function re(a){this.f=a}
F(re,oe);re.prototype.set=function(a,b,c){if(b=qe(b)){if(c){if(c<D()){re.prototype.remove.call(this,a);return}b.expiration=c}b.creation=D()}re.N.set.call(this,a,b)};
re.prototype.g=function(a){var b=re.N.g.call(this,a);if(b){var c=b.creation,d=b.expiration;if(d&&d<D()||c&&c>D())re.prototype.remove.call(this,a);else return b}};function se(){}
;function te(){}
F(te,se);te.prototype.clear=function(){var a=Ed(this.I(!0)),b=this;H(a,function(c){b.remove(c)})};function ue(a){this.f=a}
F(ue,te);n=ue.prototype;n.isAvailable=function(){if(!this.f)return!1;try{return this.f.setItem("__sak","1"),this.f.removeItem("__sak"),!0}catch(a){return!1}};
n.set=function(a,b){try{this.f.setItem(a,b)}catch(c){if(0==this.f.length)throw"Storage mechanism: Storage disabled";throw"Storage mechanism: Quota exceeded";}};
n.get=function(a){a=this.f.getItem(a);if("string"!==typeof a&&null!==a)throw"Storage mechanism: Invalid value was encountered";return a};
n.remove=function(a){this.f.removeItem(a)};
n.I=function(a){var b=0,c=this.f,d=new Bd;d.next=function(){if(b>=c.length)throw Ad;var e=c.key(b++);if(a)return e;e=c.getItem(e);if("string"!==typeof e)throw"Storage mechanism: Invalid value was encountered";return e};
return d};
n.clear=function(){this.f.clear()};
n.key=function(a){return this.f.key(a)};function ve(){var a=null;try{a=window.localStorage||null}catch(b){}this.f=a}
F(ve,ue);function we(a,b){this.g=a;this.f=null;if(fc&&!(9<=Number(rc))){xe||(xe=new Fd);this.f=xe.get(a);this.f||(b?this.f=document.getElementById(b):(this.f=document.createElement("userdata"),this.f.addBehavior("#default#userData"),document.body.appendChild(this.f)),xe.set(a,this.f));try{this.f.load(this.g)}catch(c){this.f=null}}}
F(we,te);var ye={".":".2E","!":".21","~":".7E","*":".2A","'":".27","(":".28",")":".29","%":"."},xe=null;function ze(a){return"_"+encodeURIComponent(a).replace(/[.!~*'()%]/g,function(b){return ye[b]})}
n=we.prototype;n.isAvailable=function(){return!!this.f};
n.set=function(a,b){this.f.setAttribute(ze(a),b);Ae(this)};
n.get=function(a){a=this.f.getAttribute(ze(a));if("string"!==typeof a&&null!==a)throw"Storage mechanism: Invalid value was encountered";return a};
n.remove=function(a){this.f.removeAttribute(ze(a));Ae(this)};
n.I=function(a){var b=0,c=this.f.XMLDocument.documentElement.attributes,d=new Bd;d.next=function(){if(b>=c.length)throw Ad;var e=c[b++];if(a)return decodeURIComponent(e.nodeName.replace(/\./g,"%")).substr(1);e=e.nodeValue;if("string"!==typeof e)throw"Storage mechanism: Invalid value was encountered";return e};
return d};
n.clear=function(){for(var a=this.f.XMLDocument.documentElement,b=a.attributes.length;0<b;b--)a.removeAttribute(a.attributes[b-1].nodeName);Ae(this)};
function Ae(a){try{a.f.save(a.g)}catch(b){throw"Storage mechanism: Quota exceeded";}}
;function Be(a,b){this.g=a;this.f=b+"::"}
F(Be,te);Be.prototype.set=function(a,b){this.g.set(this.f+a,b)};
Be.prototype.get=function(a){return this.g.get(this.f+a)};
Be.prototype.remove=function(a){this.g.remove(this.f+a)};
Be.prototype.I=function(a){var b=this.g.I(!0),c=this,d=new Bd;d.next=function(){for(var e=b.next();e.substr(0,c.f.length)!=c.f;)e=b.next();return a?e.substr(c.f.length):c.g.get(e)};
return d};function Ce(a,b){1<b.length?a[b[0]]=b[1]:1===b.length&&Object.assign(a,b[0])}
;var De=window.yt&&window.yt.config_||window.ytcfg&&window.ytcfg.data_||{};z("yt.config_",De,void 0);function Q(a){Ce(De,arguments)}
function R(a,b){return a in De?De[a]:b}
function Ee(){return R("PLAYER_CONFIG",{})}
function Fe(a){var b=De.EXPERIMENT_FLAGS;return b?b[a]:void 0}
;function Ge(){var a=He;A("yt.ads.biscotti.getId_")||z("yt.ads.biscotti.getId_",a,void 0)}
function Ie(a){z("yt.ads.biscotti.lastId_",a,void 0)}
;var Je=[];function Ke(a){Je.forEach(function(b){return b(a)})}
function Le(a){return a&&window.yterr?function(){try{return a.apply(this,arguments)}catch(b){S(b),Ke(b)}}:a}
function S(a){var b=A("yt.logging.errors.log");b?b(a,"ERROR",void 0,void 0,void 0):(b=R("ERRORS",[]),b.push([a,"ERROR",void 0,void 0,void 0]),Q("ERRORS",b))}
function Me(a){var b=A("yt.logging.errors.log");b?b(a,"WARNING",void 0,void 0,void 0):(b=R("ERRORS",[]),b.push([a,"WARNING",void 0,void 0,void 0]),Q("ERRORS",b))}
;function Ne(a){a=a.split("&");for(var b={},c=0,d=a.length;c<d;c++){var e=a[c].split("=");if(1==e.length&&e[0]||2==e.length)try{var f=decodeURIComponent((e[0]||"").replace(/\+/g," ")),g=decodeURIComponent((e[1]||"").replace(/\+/g," "));f in b?Array.isArray(b[f])?eb(b[f],g):b[f]=[b[f],g]:b[f]=g}catch(k){if("q"!=e[0]){var h=Error("Error decoding URL component");h.params={key:e[0],value:e[1]};S(h)}}}return b}
function Oe(a){var b=[];fb(a,function(c,d){var e=encodeURIComponent(String(d)),f;Array.isArray(c)?f=c:f=[c];H(f,function(g){""==g?b.push(e):b.push(e+"="+encodeURIComponent(String(g)))})});
return b.join("&")}
function Pe(a){"?"==a.charAt(0)&&(a=a.substr(1));return Ne(a)}
function Qe(a,b,c){var d=a.split("#",2);a=d[0];d=1<d.length?"#"+d[1]:"";var e=a.split("?",2);a=e[0];e=Pe(e[1]||"");for(var f in b)!c&&null!==e&&f in e||(e[f]=b[f]);return bc(a,e)+d}
;function Re(a){var b=Se;a=void 0===a?A("yt.ads.biscotti.lastId_")||"":a;b=Object.assign(Te(b),Ue(b));b.ca_type="image";a&&(b.bid=a);return b}
function Te(a){var b={};b.dt=ad;b.flash="0";a:{try{var c=a.f.top.location.href}catch(f){a=2;break a}a=c?c===a.g.location.href?0:1:2}b=(b.frm=a,b);b.u_tz=-(new Date).getTimezoneOffset();var d=void 0===d?L:d;try{var e=d.history.length}catch(f){e=0}b.u_his=e;b.u_java=!!L.navigator&&"unknown"!==typeof L.navigator.javaEnabled&&!!L.navigator.javaEnabled&&L.navigator.javaEnabled();L.screen&&(b.u_h=L.screen.height,b.u_w=L.screen.width,b.u_ah=L.screen.availHeight,b.u_aw=L.screen.availWidth,b.u_cd=L.screen.colorDepth);
L.navigator&&L.navigator.plugins&&(b.u_nplug=L.navigator.plugins.length);L.navigator&&L.navigator.mimeTypes&&(b.u_nmime=L.navigator.mimeTypes.length);return b}
function Ue(a){var b=a.f;try{var c=b.screenX;var d=b.screenY}catch(p){}try{var e=b.outerWidth;var f=b.outerHeight}catch(p){}try{var g=b.innerWidth;var h=b.innerHeight}catch(p){}b=[b.screenLeft,b.screenTop,c,d,b.screen?b.screen.availWidth:void 0,b.screen?b.screen.availTop:void 0,e,f,g,h];c=a.f.top;try{var k=(c||window).document,l="CSS1Compat"==k.compatMode?k.documentElement:k.body;var m=(new Ec(l.clientWidth,l.clientHeight)).round()}catch(p){m=new Ec(-12245933,-12245933)}k=m;m={};l=new gd;y.SVGElement&&
y.document.createElementNS&&l.set(0);c=Tc();c["allow-top-navigation-by-user-activation"]&&l.set(1);c["allow-popups-to-escape-sandbox"]&&l.set(2);y.crypto&&y.crypto.subtle&&l.set(3);y.TextDecoder&&y.TextEncoder&&l.set(4);l=hd(l);m.bc=l;m.bih=k.height;m.biw=k.width;m.brdim=b.join();a=a.g;return m.vis={visible:1,hidden:2,prerender:3,preview:4,unloaded:5}[a.visibilityState||a.webkitVisibilityState||a.mozVisibilityState||""]||0,m.wgl=!!L.WebGLRenderingContext,m}
var Se=new function(){var a=window.document;this.f=window;this.g=a};
z("yt.ads_.signals_.getAdSignalsString",function(a){return Oe(Re(a))},void 0);D();function T(a){a=Ve(a);return"string"===typeof a&&"false"===a?!1:!!a}
function We(a,b){var c=Ve(a);return void 0===c&&void 0!==b?b:Number(c||0)}
function Ve(a){var b=R("EXPERIMENTS_FORCED_FLAGS",{});return void 0!==b[a]?b[a]:R("EXPERIMENT_FLAGS",{})[a]}
;var Xe="XMLHttpRequest"in y?function(){return new XMLHttpRequest}:null;
function Ye(){if(!Xe)return null;var a=Xe();return"open"in a?a:null}
function Ze(a){switch(a&&"status"in a?a.status:-1){case 200:case 201:case 202:case 203:case 204:case 205:case 206:case 304:return!0;default:return!1}}
;function V(a,b){"function"===typeof a&&(a=Le(a));return window.setTimeout(a,b)}
function $e(a){window.clearTimeout(a)}
;var af={Authorization:"AUTHORIZATION","X-Goog-Visitor-Id":"SANDBOXED_VISITOR_ID","X-YouTube-Client-Name":"INNERTUBE_CONTEXT_CLIENT_NAME","X-YouTube-Client-Version":"INNERTUBE_CONTEXT_CLIENT_VERSION","X-YouTube-Device":"DEVICE","X-Youtube-Identity-Token":"ID_TOKEN","X-YouTube-Page-CL":"PAGE_CL","X-YouTube-Page-Label":"PAGE_BUILD_LABEL","X-YouTube-Variants-Checksum":"VARIANTS_CHECKSUM"},bf="app debugcss debugjs expflag force_ad_params force_viral_ad_response_params forced_experiments innertube_snapshots innertube_goldens internalcountrycode internalipoverride absolute_experiments conditional_experiments sbb sr_bns_address".split(" "),
cf=!1;
function df(a,b){b=void 0===b?{}:b;if(!c)var c=window.location.href;var d=a.match(Yb)[1]||null,e=K(a);d&&e?(d=c,c=a.match(Yb),d=d.match(Yb),c=c[3]==d[3]&&c[1]==d[1]&&c[4]==d[4]):c=e?K(c)==e&&(Number(c.match(Yb)[4]||null)||null)==(Number(a.match(Yb)[4]||null)||null):!0;d=T("web_ajax_ignore_global_headers_if_set");for(var f in af)e=R(af[f]),!e||!c&&K(a)||d&&void 0!==b[f]||(b[f]=e);if(c||!K(a))b["X-YouTube-Utc-Offset"]=String(-(new Date).getTimezoneOffset());(c||!K(a))&&(f="undefined"!=typeof Intl?(new Intl.DateTimeFormat).resolvedOptions().timeZone:
null)&&(b["X-YouTube-Time-Zone"]=f);if(c||!K(a))b["X-YouTube-Ad-Signals"]=Oe(Re(void 0));return b}
function ef(a){var b=window.location.search,c=K(a),d=Zb(a.match(Yb)[5]||null);d=(c=c&&(c.endsWith("youtube.com")||c.endsWith("youtube-nocookie.com")))&&d&&d.startsWith("/api/");if(!c||d)return a;var e=Pe(b),f={};H(bf,function(g){e[g]&&(f[g]=e[g])});
return Qe(a,f||{},!1)}
function ff(a,b){if(window.fetch&&"XML"!=b.format){var c={method:b.method||"GET",credentials:"same-origin"};b.headers&&(c.headers=b.headers);a=gf(a,b);var d=hf(a,b);d&&(c.body=d);b.withCredentials&&(c.credentials="include");var e=!1,f;fetch(a,c).then(function(g){if(!e){e=!0;f&&$e(f);var h=g.ok,k=function(l){l=l||{};var m=b.context||y;h?b.onSuccess&&b.onSuccess.call(m,l,g):b.onError&&b.onError.call(m,l,g);b.la&&b.la.call(m,l,g)};
"JSON"==(b.format||"JSON")&&(h||400<=g.status&&500>g.status)?g.json().then(k,function(){k(null)}):k(null)}});
b.va&&0<b.timeout&&(f=V(function(){e||(e=!0,$e(f),b.va.call(b.context||y))},b.timeout))}else jf(a,b)}
function jf(a,b){var c=b.format||"JSON";a=gf(a,b);var d=hf(a,b),e=!1,f=kf(a,function(k){if(!e){e=!0;h&&$e(h);var l=Ze(k),m=null,p=400<=k.status&&500>k.status,u=500<=k.status&&600>k.status;if(l||p||u)m=lf(a,c,k,b.wb);if(l)a:if(k&&204==k.status)l=!0;else{switch(c){case "XML":l=0==parseInt(m&&m.return_code,10);break a;case "RAW":l=!0;break a}l=!!m}m=m||{};p=b.context||y;l?b.onSuccess&&b.onSuccess.call(p,k,m):b.onError&&b.onError.call(p,k,m);b.la&&b.la.call(p,k,m)}},b.method,d,b.headers,b.responseType,
b.withCredentials);
if(b.R&&0<b.timeout){var g=b.R;var h=V(function(){e||(e=!0,f.abort(),$e(h),g.call(b.context||y,f))},b.timeout)}return f}
function gf(a,b){b.zb&&(a=document.location.protocol+"//"+document.location.hostname+(document.location.port?":"+document.location.port:"")+a);var c=R("XSRF_FIELD_NAME",void 0),d=b.gb;d&&(d[c]&&delete d[c],a=Qe(a,d||{},!0));return a}
function hf(a,b){var c=R("XSRF_FIELD_NAME",void 0),d=R("XSRF_TOKEN",void 0),e=b.postBody||"",f=b.D,g=R("XSRF_FIELD_NAME",void 0),h;b.headers&&(h=b.headers["Content-Type"]);b.yb||K(a)&&!b.withCredentials&&K(a)!=document.location.hostname||"POST"!=b.method||h&&"application/x-www-form-urlencoded"!=h||b.D&&b.D[g]||(f||(f={}),f[c]=d);f&&"string"===typeof e&&(e=Pe(e),pb(e,f),e=b.wa&&"JSON"==b.wa?JSON.stringify(e):ac(e));f=e||f&&!jb(f);!cf&&f&&"POST"!=b.method&&(cf=!0,S(Error("AJAX request with postData should use POST")));
return e}
function lf(a,b,c,d){var e=null;switch(b){case "JSON":try{var f=c.responseText}catch(g){throw d=Error("Error reading responseText"),d.params=a,Me(d),g;}a=c.getResponseHeader("Content-Type")||"";f&&0<=a.indexOf("json")&&(e=JSON.parse(f));break;case "XML":if(a=(a=c.responseXML)?mf(a):null)e={},H(a.getElementsByTagName("*"),function(g){e[g.tagName]=nf(g)})}d&&of(e);
return e}
function of(a){if(Ma(a))for(var b in a){var c;(c="html_content"==b)||(c=b.length-5,c=0<=c&&b.indexOf("_html",c)==c);if(c){c=b;var d=Sb(a[b],null);a[c]=d}else of(a[b])}}
function mf(a){return a?(a=("responseXML"in a?a.responseXML:a).getElementsByTagName("root"))&&0<a.length?a[0]:null:null}
function nf(a){var b="";H(a.childNodes,function(c){b+=c.nodeValue});
return b}
function kf(a,b,c,d,e,f,g){function h(){4==(k&&"readyState"in k?k.readyState:0)&&b&&Le(b)(k)}
c=void 0===c?"GET":c;d=void 0===d?"":d;var k=Ye();if(!k)return null;"onloadend"in k?k.addEventListener("loadend",h,!1):k.onreadystatechange=h;T("debug_forward_web_query_parameters")&&(a=ef(a));k.open(c,a,!0);f&&(k.responseType=f);g&&(k.withCredentials=!0);c="POST"==c&&(void 0===window.FormData||!(d instanceof FormData));if(e=df(a,e))for(var l in e)k.setRequestHeader(l,e[l]),"content-type"==l.toLowerCase()&&(c=!1);c&&k.setRequestHeader("Content-Type","application/x-www-form-urlencoded");k.send(d);
return k}
;var pf=sc||tc;function qf(a){var b=Nb;return b?0<=b.toLowerCase().indexOf(a):!1}
;var rf={},sf=0;
function tf(a,b,c,d,e){e=void 0===e?"":e;a&&(c&&!qf("cobalt")?a&&(a instanceof I||(a="object"==typeof a&&a.M?a.L():String(a),Kb.test(a)?a=new I(Fb,a):(a=String(a),a=a.replace(/(%0A|%0D)/g,""),a=(b=a.match(Jb))&&Ib.test(b[1])?new I(Fb,a):null)),b=Hb(a||Mb),"about:invalid#zClosurez"===b||b.startsWith("data")?a="":(b instanceof Qb?a=b:(c="object"==typeof b,a=null,c&&b.ja&&(a=b.ga()),b=xb(c&&b.M?b.L():String(b)),a=Sb(b,a)),a instanceof Qb&&a.constructor===Qb&&a.h===Rb?a=a.f:(Ja(a),a="type_error:SafeHtml"),a=
encodeURIComponent(String(Nd(a.toString())))),/^[\s\xa0]*$/.test(a)||(a=Ic("IFRAME",{src:'javascript:"<body><img src=\\""+'+a+'+"\\"></body>"',style:"display:none"}),(9==a.nodeType?a:a.ownerDocument||a.document).body.appendChild(a))):e?kf(a,b,"POST",e,d):R("USE_NET_AJAX_FOR_PING_TRANSPORT",!1)||d?kf(a,b,"GET","",d):uf(a,b)||vf(a,b))}
function uf(a,b){if(!Fe("web_use_beacon_api_for_ad_click_server_pings"))return!1;if(Fe("use_sonic_js_library_for_v4_support")){a:{try{var c=new Wa({url:a});if(c.h&&c.g||c.i){var d=Zb(a.match(Yb)[5]||null);var e=!(!d||!d.endsWith("/aclk")||"1"!==dc(a,"ri"));break a}}catch(f){}e=!1}if(!e)return!1}else if(e=Zb(a.match(Yb)[5]||null),!e||-1==e.indexOf("/aclk")||"1"!==dc(a,"ae")||"1"!==dc(a,"act"))return!1;return wf(a)?(b&&b(),!0):!1}
function wf(a,b){try{if(window.navigator&&window.navigator.sendBeacon&&window.navigator.sendBeacon(a,void 0===b?"":b))return!0}catch(c){}return!1}
function vf(a,b){var c=new Image,d=""+sf++;rf[d]=c;c.onload=c.onerror=function(){b&&rf[d]&&b();delete rf[d]};
c.src=a}
;var xf=window.yt&&window.yt.msgs_||window.ytcfg&&window.ytcfg.msgs||{};z("yt.msgs_",xf,void 0);function yf(a){Ce(xf,arguments)}
;function zf(a,b,c,d){Bc.set(""+a,b,{ra:c,path:"/",domain:void 0===d?"youtube.com":d,secure:!1})}
;function Af(a){a&&(a.dataset?a.dataset[Bf("loaded")]="true":a.setAttribute("data-loaded","true"))}
function Cf(a,b){return a?a.dataset?a.dataset[Bf(b)]:a.getAttribute("data-"+b):null}
var Df={};function Bf(a){return Df[a]||(Df[a]=String(a).replace(/\-([a-z])/g,function(b,c){return c.toUpperCase()}))}
;var Ef=y.ytPubsubPubsubInstance||new P,Ff=y.ytPubsubPubsubSubscribedKeys||{},Gf=y.ytPubsubPubsubTopicToKeys||{},Hf=y.ytPubsubPubsubIsSynchronous||{};function If(a,b){var c=Jf();if(c){var d=c.subscribe(a,function(){var e=arguments;var f=function(){Ff[d]&&b.apply&&"function"==typeof b.apply&&b.apply(window,e)};
try{Hf[a]?f():V(f,0)}catch(g){S(g)}},void 0);
Ff[d]=!0;Gf[a]||(Gf[a]=[]);Gf[a].push(d);return d}return 0}
function Kf(a){var b=Jf();b&&("number"===typeof a?a=[a]:"string"===typeof a&&(a=[parseInt(a,10)]),H(a,function(c){b.unsubscribeByKey(c);delete Ff[c]}))}
function Lf(a,b){var c=Jf();c&&c.publish.apply(c,arguments)}
function Mf(a){var b=Jf();if(b)if(b.clear(a),a)Nf(a);else for(var c in Gf)Nf(c)}
function Jf(){return y.ytPubsubPubsubInstance}
function Nf(a){Gf[a]&&(a=Gf[a],H(a,function(b){Ff[b]&&delete Ff[b]}),a.length=0)}
P.prototype.subscribe=P.prototype.subscribe;P.prototype.unsubscribeByKey=P.prototype.P;P.prototype.publish=P.prototype.O;P.prototype.clear=P.prototype.clear;z("ytPubsubPubsubInstance",Ef,void 0);z("ytPubsubPubsubTopicToKeys",Gf,void 0);z("ytPubsubPubsubIsSynchronous",Hf,void 0);z("ytPubsubPubsubSubscribedKeys",Ff,void 0);var Of=/\.vflset|-vfl[a-zA-Z0-9_+=-]+/,Pf=/-[a-zA-Z]{2,3}_[a-zA-Z]{2,3}(?=(\/|$))/;function Qf(a,b,c){c=void 0===c?null:c;if(window.spf&&spf.script){c="";if(a){var d=a.indexOf("jsbin/"),e=a.lastIndexOf(".js"),f=d+6;-1<d&&-1<e&&e>f&&(c=a.substring(f,e),c=c.replace(Of,""),c=c.replace(Pf,""),c=c.replace("debug-",""),c=c.replace("tracing-",""))}spf.script.load(a,c,b)}else Rf(a,b,c)}
function Rf(a,b,c){c=void 0===c?null:c;var d=Sf(a),e=document.getElementById(d),f=e&&Cf(e,"loaded"),g=e&&!f;f?b&&b():(b&&(f=If(d,b),b=""+Na(b),Tf[b]=f),g||(e=Uf(a,d,function(){Cf(e,"loaded")||(Af(e),Lf(d),V(Sa(Mf,d),0))},c)))}
function Uf(a,b,c,d){d=void 0===d?null:d;var e=Jc(document,"SCRIPT");e.id=b;e.onload=function(){c&&setTimeout(c,0)};
e.onreadystatechange=function(){switch(e.readyState){case "loaded":case "complete":e.onload()}};
d&&e.setAttribute("nonce",d);Ub(e,Nc(a));a=document.getElementsByTagName("head")[0]||document.body;a.insertBefore(e,a.firstChild);return e}
function Vf(a){a=Sf(a);var b=document.getElementById(a);b&&(Mf(a),b.parentNode.removeChild(b))}
function Wf(a,b){if(a&&b){var c=""+Na(b);(c=Tf[c])&&Kf(c)}}
function Sf(a){var b=document.createElement("a");Tb(b,a);a=b.href.replace(/^[a-zA-Z]+:\/\//,"//");return"js-"+Xb(a)}
var Tf={};function Xf(){}
function Yf(a,b){return Zf(a,0,b)}
function $f(a,b){return Zf(a,1,b)}
;function ag(){}
v(ag,Xf);function Zf(a,b,c){isNaN(c)&&(c=void 0);var d=A("yt.scheduler.instance.addJob");return d?d(a,b,c):void 0===c?(a(),NaN):V(a,c||0)}
function bg(a){if(!isNaN(a)){var b=A("yt.scheduler.instance.cancelJob");b?b(a):$e(a)}}
ag.prototype.start=function(){var a=A("yt.scheduler.instance.start");a&&a()};
ag.prototype.pause=function(){var a=A("yt.scheduler.instance.pause");a&&a()};
Ia(ag);ag.getInstance();var cg=[],dg=!1;function eg(){if(!T("disable_ad_status_on_html5_clients")&&(!T("condition_ad_status_fetch_on_consent_cookie_html5_clients")||Bc.get("CONSENT","").startsWith("YES+"))&&"1"!=gb(Ee(),"args","privembed")){var a=function(){dg=!0;"google_ad_status"in window?Q("DCLKSTAT",1):Q("DCLKSTAT",2)};
Qf("//static.doubleclick.net/instream/ad_status.js",a);cg.push($f(function(){dg||"google_ad_status"in window||(Wf("//static.doubleclick.net/instream/ad_status.js",a),dg=!0,Q("DCLKSTAT",3))},5E3))}}
function fg(){return parseInt(R("DCLKSTAT",0),10)}
;var gg=0;z("ytDomDomGetNextId",A("ytDomDomGetNextId")||function(){return++gg},void 0);var hg={stopImmediatePropagation:1,stopPropagation:1,preventMouseEvent:1,preventManipulation:1,preventDefault:1,layerX:1,layerY:1,screenX:1,screenY:1,scale:1,rotation:1,webkitMovementX:1,webkitMovementY:1};
function ig(a){this.type="";this.state=this.source=this.data=this.currentTarget=this.relatedTarget=this.target=null;this.charCode=this.keyCode=0;this.metaKey=this.shiftKey=this.ctrlKey=this.altKey=!1;this.clientY=this.clientX=0;this.changedTouches=this.touches=null;try{if(a=a||window.event){this.event=a;for(var b in a)b in hg||(this[b]=a[b]);var c=a.target||a.srcElement;c&&3==c.nodeType&&(c=c.parentNode);this.target=c;var d=a.relatedTarget;if(d)try{d=d.nodeName?d:null}catch(e){d=null}else"mouseover"==
this.type?d=a.fromElement:"mouseout"==this.type&&(d=a.toElement);this.relatedTarget=d;this.clientX=void 0!=a.clientX?a.clientX:a.pageX;this.clientY=void 0!=a.clientY?a.clientY:a.pageY;this.keyCode=a.keyCode?a.keyCode:a.which;this.charCode=a.charCode||("keypress"==this.type?this.keyCode:0);this.altKey=a.altKey;this.ctrlKey=a.ctrlKey;this.shiftKey=a.shiftKey;this.metaKey=a.metaKey;this.f=a.pageX;this.g=a.pageY}}catch(e){}}
function jg(a){if(document.body&&document.documentElement){var b=document.body.scrollTop+document.documentElement.scrollTop;a.f=a.clientX+(document.body.scrollLeft+document.documentElement.scrollLeft);a.g=a.clientY+b}}
ig.prototype.preventDefault=function(){this.event&&(this.event.returnValue=!1,this.event.preventDefault&&this.event.preventDefault())};
ig.prototype.stopPropagation=function(){this.event&&(this.event.cancelBubble=!0,this.event.stopPropagation&&this.event.stopPropagation())};
ig.prototype.stopImmediatePropagation=function(){this.event&&(this.event.cancelBubble=!0,this.event.stopImmediatePropagation&&this.event.stopImmediatePropagation())};var ib=y.ytEventsEventsListeners||{};z("ytEventsEventsListeners",ib,void 0);var kg=y.ytEventsEventsCounter||{count:0};z("ytEventsEventsCounter",kg,void 0);
function lg(a,b,c,d){d=void 0===d?{}:d;a.addEventListener&&("mouseenter"!=b||"onmouseenter"in document?"mouseleave"!=b||"onmouseenter"in document?"mousewheel"==b&&"MozBoxSizing"in document.documentElement.style&&(b="MozMousePixelScroll"):b="mouseout":b="mouseover");return hb(function(e){var f="boolean"===typeof e[4]&&e[4]==!!d,g=Ma(e[4])&&Ma(d)&&lb(e[4],d);return!!e.length&&e[0]==a&&e[1]==b&&e[2]==c&&(f||g)})}
var mg=Xa(function(){var a=!1;try{var b=Object.defineProperty({},"capture",{get:function(){a=!0}});
window.addEventListener("test",null,b)}catch(c){}return a});
function ng(a,b,c,d){d=void 0===d?{}:d;if(!a||!a.addEventListener&&!a.attachEvent)return"";var e=lg(a,b,c,d);if(e)return e;e=++kg.count+"";var f=!("mouseenter"!=b&&"mouseleave"!=b||!a.addEventListener||"onmouseenter"in document);var g=f?function(h){h=new ig(h);if(!Mc(h.relatedTarget,function(k){return k==a}))return h.currentTarget=a,h.type=b,c.call(a,h)}:function(h){h=new ig(h);
h.currentTarget=a;return c.call(a,h)};
g=Le(g);a.addEventListener?("mouseenter"==b&&f?b="mouseover":"mouseleave"==b&&f?b="mouseout":"mousewheel"==b&&"MozBoxSizing"in document.documentElement.style&&(b="MozMousePixelScroll"),mg()||"boolean"===typeof d?a.addEventListener(b,g,d):a.addEventListener(b,g,!!d.capture)):a.attachEvent("on"+b,g);ib[e]=[a,b,c,g,d];return e}
function og(a){a&&("string"==typeof a&&(a=[a]),H(a,function(b){if(b in ib){var c=ib[b],d=c[0],e=c[1],f=c[3];c=c[4];d.removeEventListener?mg()||"boolean"===typeof c?d.removeEventListener(e,f,c):d.removeEventListener(e,f,!!c.capture):d.detachEvent&&d.detachEvent("on"+e,f);delete ib[b]}}))}
;var pg=window.ytcsi&&window.ytcsi.now?window.ytcsi.now:window.performance&&window.performance.timing&&window.performance.now&&window.performance.timing.navigationStart?function(){return window.performance.timing.navigationStart+window.performance.now()}:function(){return(new Date).getTime()};function qg(a){this.u=a;this.f=null;this.j=0;this.m=null;this.l=0;this.h=[];for(a=0;4>a;a++)this.h.push(0);this.i=0;this.G=ng(window,"mousemove",C(this.H,this));a=C(this.C,this);"function"===typeof a&&(a=Le(a));this.K=window.setInterval(a,25)}
F(qg,M);qg.prototype.H=function(a){void 0===a.f&&jg(a);var b=a.f;void 0===a.g&&jg(a);this.f=new Dc(b,a.g)};
qg.prototype.C=function(){if(this.f){var a=pg();if(0!=this.j){var b=this.m,c=this.f,d=b.x-c.x;b=b.y-c.y;d=Math.sqrt(d*d+b*b)/(a-this.j);this.h[this.i]=.5<Math.abs((d-this.l)/this.l)?1:0;for(c=b=0;4>c;c++)b+=this.h[c]||0;3<=b&&this.u();this.l=d}this.j=a;this.m=this.f;this.i=(this.i+1)%4}};
qg.prototype.o=function(){window.clearInterval(this.K);og(this.G)};var rg={};
function sg(a){var b=void 0===a?{}:a;a=void 0===b.Ia?!0:b.Ia;b=void 0===b.Ua?!1:b.Ua;if(null==A("_lact",window)){var c=parseInt(R("LACT"),10);c=isFinite(c)?D()-Math.max(c,0):-1;z("_lact",c,window);z("_fact",c,window);-1==c&&tg();ng(document,"keydown",tg);ng(document,"keyup",tg);ng(document,"mousedown",tg);ng(document,"mouseup",tg);a&&(b?ng(window,"touchmove",function(){ug("touchmove",200)},{passive:!0}):(ng(window,"resize",function(){ug("resize",200)}),ng(window,"scroll",function(){ug("scroll",200)})));
new qg(function(){ug("mouse",100)});
ng(document,"touchstart",tg,{passive:!0});ng(document,"touchend",tg,{passive:!0})}}
function ug(a,b){rg[a]||(rg[a]=!0,$f(function(){tg();rg[a]=!1},b))}
function tg(){null==A("_lact",window)&&sg();var a=D();z("_lact",a,window);-1==A("_fact",window)&&z("_fact",a,window);(a=A("ytglobal.ytUtilActivityCallback_"))&&a()}
function vg(){var a=A("_lact",window),b;null==a?b=-1:b=Math.max(D()-a,0);return b}
;var wg=window,W=wg.ytcsi&&wg.ytcsi.now?wg.ytcsi.now:wg.performance&&wg.performance.timing&&wg.performance.now&&wg.performance.timing.navigationStart?function(){return wg.performance.timing.navigationStart+wg.performance.now()}:function(){return(new Date).getTime()};var xg=We("initial_gel_batch_timeout",1E3),yg=Math.pow(2,16)-1,zg=null,Ag=0,Bg=void 0,Cg=0,Dg=0,Eg=0,Fg=!0,Gg=y.ytLoggingTransportLogPayloadsQueue_||{};z("ytLoggingTransportLogPayloadsQueue_",Gg,void 0);var Hg=y.ytLoggingTransportGELQueue_||new Map;z("ytLoggingTransportGELQueue_",Hg,void 0);var Ig=y.ytLoggingTransportTokensToCttTargetIds_||{};z("ytLoggingTransportTokensToCttTargetIds_",Ig,void 0);
function Jg(){$e(Cg);$e(Dg);Dg=0;Bg&&Bg.isReady()?(Kg(Hg),"log_event"in Gg&&Kg(Object.entries(Gg.log_event)),Hg.clear(),delete Gg.log_event):Lg()}
function Lg(){T("web_gel_timeout_cap")&&!Dg&&(Dg=V(Jg,6E4));$e(Cg);var a=R("LOGGING_BATCH_TIMEOUT",We("web_gel_debounce_ms",1E4));T("shorten_initial_gel_batch_timeout")&&Fg&&(a=xg);Cg=V(Jg,a)}
function Kg(a){var b=Bg,c=Math.round(W());a=t(a);for(var d=a.next();!d.done;d=a.next()){var e=t(d.value);d=e.next().value;var f=e.next().value;e=nb({context:Mg(b.f||Ng())});e.events=f;(f=Ig[d])&&Og(e,d,f);delete Ig[d];Pg(e,c);Qg(b,"log_event",e,{retry:!0,onSuccess:function(){Ag=Math.round(W()-c)}});
Fg=!1}}
function Pg(a,b){a.requestTimeMs=String(b);T("unsplit_gel_payloads_in_logs")&&(a.unsplitGelPayloadsInLogs=!0);var c=R("EVENT_ID",void 0);if(c){var d=R("BATCH_CLIENT_COUNTER",void 0)||0;!d&&T("web_client_counter_random_seed")&&(d=Math.floor(Math.random()*yg/2));d++;d>yg&&(d=1);Q("BATCH_CLIENT_COUNTER",d);c={serializedEventId:c,clientCounter:String(d)};a.serializedClientEventId=c;zg&&Ag&&T("log_gel_rtt_web")&&(a.previousBatchInfo={serializedClientEventId:zg,roundtripMs:String(Ag)});zg=c;Ag=0}}
function Og(a,b,c){if(c.videoId)var d="VIDEO";else if(c.playlistId)d="PLAYLIST";else return;a.credentialTransferTokenTargetId=c;a.context=a.context||{};a.context.user=a.context.user||{};a.context.user.credentialTransferTokens=[{token:b,scope:d}]}
;var Rg=y.ytLoggingGelSequenceIdObj_||{};z("ytLoggingGelSequenceIdObj_",Rg,void 0);
function Sg(a,b,c,d){d=void 0===d?{}:d;var e={};e.eventTimeMs=Math.round(d.timestamp||W());e[a]=b;e.context={lastActivityMs:String(d.timestamp?-1:vg())};T("log_sequence_info_on_gel_web")&&d.S&&(a=e.context,b=d.S,Rg[b]=b in Rg?Rg[b]+1:0,a.sequence={index:Rg[b],groupKey:b},d.xb&&delete Rg[d.S]);d=d.fa;a="";d&&(a={},d.videoId?a.videoId=d.videoId:d.playlistId&&(a.playlistId=d.playlistId),Ig[d.token]=a,a=d.token);d=Hg.get(a)||[];Hg.set(a,d);d.push(e);c&&(Bg=new c);c=We("web_logging_max_batch")||100;e=
W();d.length>=c?Jg():10<=e-Eg&&(Lg(),Eg=e)}
;function Tg(){for(var a={},b=t(Object.entries(Pe(R("DEVICE","")))),c=b.next();!c.done;c=b.next()){var d=t(c.value);c=d.next().value;d=d.next().value;"cbrand"===c?a.deviceMake=d:"cmodel"===c?a.deviceModel=d:"cbr"===c?a.browserName=d:"cbrver"===c?a.browserVersion=d:"cos"===c?a.osName=d:"cosver"===c?a.osVersion=d:"cplatform"===c&&(a.platform=d)}return a}
;function Ug(){return"INNERTUBE_API_KEY"in De&&"INNERTUBE_API_VERSION"in De}
function Ng(){return{innertubeApiKey:R("INNERTUBE_API_KEY",void 0),innertubeApiVersion:R("INNERTUBE_API_VERSION",void 0),Ja:R("INNERTUBE_CONTEXT_CLIENT_CONFIG_INFO"),Ka:R("INNERTUBE_CONTEXT_CLIENT_NAME","WEB"),innertubeContextClientVersion:R("INNERTUBE_CONTEXT_CLIENT_VERSION",void 0),Ma:R("INNERTUBE_CONTEXT_HL",void 0),La:R("INNERTUBE_CONTEXT_GL",void 0),Na:R("INNERTUBE_HOST_OVERRIDE",void 0)||"",Pa:!!R("INNERTUBE_USE_THIRD_PARTY_AUTH",!1),Oa:!!R("INNERTUBE_OMIT_API_KEY_WHEN_AUTH_HEADER_IS_PRESENT",
!1)}}
function Mg(a){a={client:{hl:a.Ma,gl:a.La,clientName:a.Ka,clientVersion:a.innertubeContextClientVersion,configInfo:a.Ja}};var b=window.devicePixelRatio;b&&1!=b&&(a.client.screenDensityFloat=String(b));b=R("EXPERIMENTS_TOKEN","");""!==b&&(a.client.experimentsToken=b);b=[];var c=R("EXPERIMENTS_FORCED_FLAGS",{});for(d in c)b.push({key:d,value:String(c[d])});var d=R("EXPERIMENT_FLAGS",{});for(var e in d)e.startsWith("force_")&&void 0===c[e]&&b.push({key:e,value:String(d[e])});0<b.length&&(a.request={internalExperimentFlags:b});
R("DELEGATED_SESSION_ID")&&!T("pageid_as_header_web")&&(a.user={onBehalfOfUser:R("DELEGATED_SESSION_ID")});a.client=Object.assign(a.client,Tg());return a}
function Vg(a,b,c){c=void 0===c?{}:c;var d={"X-Goog-Visitor-Id":c.visitorData||R("VISITOR_DATA","")};if(b&&b.includes("www.youtube-nocookie.com"))return d;(b=c.tb||R("AUTHORIZATION"))||(a?b="Bearer "+A("gapi.auth.getToken")().sb:b=fd([]));b&&(d.Authorization=b,d["X-Goog-AuthUser"]=R("SESSION_INDEX",0),T("pageid_as_header_web")&&(d["X-Goog-PageId"]=R("DELEGATED_SESSION_ID")));return d}
;function Wg(a){a=Object.assign({},a);delete a.Authorization;var b=fd();if(b){var c=new yd;c.update(R("INNERTUBE_API_KEY",void 0));c.update(b);b=c.digest();c=3;Ka(b);void 0===c&&(c=0);if(!vc){vc={};for(var d="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789".split(""),e=["+/=","+/","-_=","-_.","-_"],f=0;5>f;f++){var g=d.concat(e[f].split(""));uc[f]=g;for(var h=0;h<g.length;h++){var k=g[h];void 0===vc[k]&&(vc[k]=h)}}}c=uc[c];d=[];for(e=0;e<b.length;e+=3){var l=b[e],m=(f=e+1<b.length)?
b[e+1]:0;k=(g=e+2<b.length)?b[e+2]:0;h=l>>2;l=(l&3)<<4|m>>4;m=(m&15)<<2|k>>6;k&=63;g||(k=64,f||(m=64));d.push(c[h],c[l],c[m]||"",c[k]||"")}a.hash=d.join("")}return a}
function Xg(a){a=Wg(a);var b=new yd;b.update(JSON.stringify(a,Object.keys(a).sort()));a=b.digest();b="";for(var c=0;c<a.length;c++)b+="0123456789ABCDEF".charAt(Math.floor(a[c]/16))+"0123456789ABCDEF".charAt(a[c]%16);return b}
;function Yg(){var a=new ve;(a=a.isAvailable()?new Be(a,"yt.innertube"):null)||(a=new we("yt.innertube"),a=a.isAvailable()?a:null);this.f=a?new re(a):null;this.g=document.domain||window.location.hostname}
Yg.prototype.set=function(a,b,c,d){c=c||31104E3;this.remove(a);if(this.f)try{this.f.set(a,b,D()+1E3*c);return}catch(f){}var e="";if(d)try{e=escape(Nd(b))}catch(f){return}else e=escape(b);zf(a,e,c,this.g)};
Yg.prototype.get=function(a,b){var c=void 0,d=!this.f;if(!d)try{c=this.f.get(a)}catch(e){d=!0}if(d&&(c=Bc.get(""+a,void 0))&&(c=unescape(c),b))try{c=JSON.parse(c)}catch(e){this.remove(a),c=void 0}return c};
Yg.prototype.remove=function(a){this.f&&this.f.remove(a);var b=this.g;Bc.remove(""+a,"/",void 0===b?"youtube.com":b)};var Zg;function $g(){Zg||(Zg=new Yg);return Zg}
function ah(a,b,c,d){if(d)return null;d=$g().get("nextId",!0)||1;var e=$g().get("requests",!0)||{};e[d]={method:a,request:b,authState:Wg(c),requestTime:Math.round(W())};$g().set("nextId",d+1,86400,!0);$g().set("requests",e,86400,!0);return d}
function bh(a){var b=$g().get("requests",!0)||{};delete b[a];$g().set("requests",b,86400,!0)}
function ch(a){var b=$g().get("requests",!0);if(b){for(var c in b){var d=b[c];if(!(6E4>Math.round(W())-d.requestTime)){var e=d.authState,f=Wg(Vg(!1));lb(e,f)&&(e=d.request,"requestTimeMs"in e&&(e.requestTimeMs=Math.round(W())),Qg(a,d.method,e,{}));delete b[c]}}$g().set("requests",b,86400,!0)}}
;function dh(){}
;function eh(){var a=Error.call(this,"Transaction was aborted");this.message=a.message;"stack"in a&&(this.stack=a.stack);Object.setPrototypeOf(this,eh.prototype)}
v(eh,Error);function fh(a){return a instanceof DOMException?"VersionError"===a.name:"DOMError"in self&&a instanceof DOMError?"VersionError"===a.name:a instanceof Object&&"message"in a?"An attempt was made to open a database using a lower version than the existing version."===a.message:!1}
;function X(a){return new O(function(b,c){function d(){c(a.error);f()}
function e(){b(a.result);f()}
function f(){a.removeEventListener("success",e);a.removeEventListener("error",d)}
a.addEventListener("success",e);a.addEventListener("error",d)})}
;function gh(a){this.f=a}
n=gh.prototype;n.add=function(a,b,c){return hh(this,[a],"readwrite",function(d){return ih(d,a).add(b,c)})};
n.clear=function(a){return hh(this,[a],"readwrite",function(b){return ih(b,a).clear()})};
n.close=function(){this.f.close()};
n.count=function(a,b){return hh(this,[a],"readonly",function(c){return ih(c,a).count(b)})};
function jh(a,b,c){a=a.f.createObjectStore(b,c);return new kh(a)}
n["delete"]=function(a,b){return hh(this,[a],"readwrite",function(c){return ih(c,a)["delete"](b)})};
n.get=function(a,b){return hh(this,[a],"readwrite",function(c){return ih(c,a).get(b)})};
function lh(a,b){return hh(a,["databases"],"readwrite",function(c){return mh(ih(c,"databases"),b,void 0)})}
function nh(a){var b=["LogsRequestsStore"];a=a.f.transaction(b,"readwrite");return new oh(a,b)}
function hh(a,b,c,d){c=void 0===c?"readonly":c;return new O(function(e,f){var g=a.f.transaction(b,c),h=new oh(g,b);ae(d(h).then(function(k){ae(ph(h).then(function(){e(k)}),function(l){f(l)})}),function(k){f(k)})})}
function kh(a){this.f=a}
n=kh.prototype;n.add=function(a,b){var c=b?this.f.add(a,b):this.f.add(a);return X(c)};
n.clear=function(){return X(this.f.clear()).then(function(){})};
n.count=function(a){a=a?this.f.count(a):this.f.count();return X(a)};
n["delete"]=function(a){return X(this.f["delete"](a))};
n.get=function(a){return X(this.f.get(a))};
n.index=function(a){return new qh(this.f.index(a))};
n.getName=function(){return this.f.name};
function mh(a,b,c){a=c?a.f.put(b,c):a.f.put(b);return X(a)}
function oh(a){var b=this;this.f=a;this.g=new Map;this.done=new O(function(c,d){b.f.addEventListener("complete",function(){c()});
b.f.addEventListener("error",function(e){e.currentTarget===e.target&&d(b.f.error)});
b.f.addEventListener("abort",function(){var e=b.f.error;e?("QuotaExceededError"===e.name?Me(Error("The current transaction exceeded its quota limitations.")):"UnknownError"===e.name&&Me(Error("The current transaction may have failed because of exceeding quota limitations.")),d(e)):d(new eh)})})}
oh.prototype.abort=function(){this.f.abort();return this.done};
function ph(a){var b=a.f;b.commit&&b.commit();return a.done}
function ih(a,b){var c=a.f.objectStore(b),d=a.g.get(c);d||(d=new kh(c),a.g.set(c,d));return d}
function qh(a){this.f=a}
qh.prototype.count=function(a){a=a?this.f.count(a):this.f.count();return X(a)};
qh.prototype.get=function(a){return X(this.f.get(a))};
function rh(a,b){this.request=a;this.f=b}
function sh(a){return X(a).then(function(b){return null===b?null:new rh(a,b)})}
rh.prototype["delete"]=function(){return X(this.f["delete"]()).then(function(){})};
rh.prototype.getValue=function(){return this.f.value};
rh.prototype.update=function(a){return X(this.f.update(a))};function th(a,b,c){function d(){m||(m=new gh(f.result));return m}
var e=oh;var f=void 0!==b?self.indexedDB.open(a,b):self.indexedDB.open(a);var g=c.blocked,h=c.blocking,k=c.f,l=c.upgrade,m;l&&f.addEventListener("upgradeneeded",function(p){if(null===p.newVersion)throw Error("Invariant: newVersion on IDbVersionChangeEvent is null");if(null===f.transaction)throw Error("Invariant: transaction on IDbOpenDbRequest is null");var u=d(),q=new e(f.transaction);l(u,p.oldVersion,p.newVersion,q)});
g&&f.addEventListener("blocked",function(){g()});
return X(f).then(function(p){h&&p.addEventListener("versionchange",function(){h(d())});
k&&p.addEventListener("close",function(){k()});
return d()})}
function uh(a,b,c){c=void 0===c?{}:c;return th(a,b,c)}
;var vh,wh,xh=["getAll","getAllKeys","getKey","openKeyCursor"],yh=["getAll","getAllKeys","getKey","openKeyCursor"];function zh(){var a;if(a=pf)a=/WebKit\/([0-9]+)/.exec(Nb),a=!!(a&&600<=parseInt(a[1],10));a&&(a=/WebKit\/([0-9]+)/.exec(Nb),a=!(a&&602<=parseInt(a[1],10)));return a&&!T("ytidb_allow_on_ios_safari_v8_and_v9")?!1:!!self.indexedDB}
function Ah(){return new Promise(function(a){setTimeout(a,50)})}
function Bh(){return N(this,function b(){var c,d,e;return x(b,function(f){switch(f.f){case 1:if(!zh())return f["return"](!1);ra(f);d=!1;return w(f,uh("yt-idb-test-do-not-use",void 0,{blocking:function(){d=!0;c&&(c.close(),c=void 0)}}),5);
case 5:return c=f.g,e=uh("yt-idb-test-do-not-use",c.f.version+1).then(function(g){try{g.close()}catch(h){}}),w(f,Promise.race([e,
Ah()]),6);case 6:return f["return"](d);case 3:ta(f);if(c)try{c.close()}catch(g){}ua(f);break;case 2:return sa(f),f["return"](!1)}})})}
function Ch(){return void 0!==vh?Yd(vh):new O(function(a){Bh().then(function(b){vh=b;a(b)})})}
function Dh(){return void 0!==wh?Yd(wh):Ch().then(function(a){if(!a)return!1;var b=t(xh);for(a=b.next();!a.done;a=b.next())if(!IDBObjectStore.prototype[a.value])return!1;b=t(yh);for(a=b.next();!a.done;a=b.next())if(!IDBIndex.prototype[a.value])return!1;return IDBObjectStore.prototype.getKey?!0:!1}).then(function(a){return wh=a})}
;var Eh;function Fh(){function a(b){b.close();Eh=void 0}
Eh||(Eh=ae(uh("YtIdbMeta",1,{blocking:a,upgrade:function(b,c){1>c&&jh(b,"databases",{keyPath:"actualName"})}}),function(b){return fh(b)?uh("YtIdbMeta",void 0,{blocking:a}):Zd(b)}));
return Eh}
function Gh(a){return Fh().then(function(b){return b.get("databases",a.actualName).then(function(c){if(c?a.actualName!==c.actualName||a.publicName!==c.publicName||a.userIdentifier!==c.userIdentifier||a.signedIn!==c.signedIn:1)return lh(b,a)})})}
function Hh(a){return Fh().then(function(b){return b["delete"]("databases",a)})}
;function Ih(a){try{var b={actualName:"LogsDataBase",publicName:"LogsDataBase",userIdentifier:void 0,signedIn:!1}}catch(c){return Zd(c)}return ae(Gh(b).then(function(){return a(b)}),function(c){return ae(Hh(b.actualName),function(){}).then(function(){return Zd(c)})})}
function Jh(a,b){b=void 0===b?{}:b;return Ih(function(c){return uh(c.actualName,a,b)})}
;var Kh;function Lh(){return N(this,function b(){return x(b,function(c){if(!Kh)try{Kh=Jh(1,{upgrade:function(d,e){1>e&&(jh(d,"LogsRequestsStore",{keyPath:"id",autoIncrement:!0}).f.createIndex("newRequest",["status","authHash","timestamp"],{unique:!1}),jh(d,"sapisid"))}})}catch(d){if(!fh(d))return S(d),c["return"](Promise.reject(d));
Kh=Jh()}return c["return"](Kh)})})}
function Mh(a){return N(this,function c(){var d,e,f,g,h;return x(c,function(k){switch(k.f){case 1:return w(k,Lh(),2);case 2:return d=k.g,e=ih(nh(d),"LogsRequestsStore"),w(k,Nh(),3);case 3:return f=k.g,g=Object.assign(Object.assign({},a),{options:JSON.parse(JSON.stringify(a.options)),authHash:f}),w(k,e.add(g),4);case 4:return h=k.g,k["return"](h)}})})}
function Oh(){return N(this,function b(){var c,d,e,f,g,h,k,l;return x(b,function(m){switch(m.f){case 1:return w(m,Nh(),2);case 2:return c=m.g,d=["NEW",c,0],e=["NEW",c,W()],f=IDBKeyRange.bound(d,e),w(m,Lh(),3);case 3:g=m.g;h=nh(g);var p=ih(h,"LogsRequestsStore").index("newRequest");p=f?p.f.openCursor(f,"prev"):f?p.f.openCursor(f):p.f.openCursor();p=sh(p);return w(m,p,4);case 4:k=m.g;l=void 0;if(null===k||void 0===k||!k.getValue()){m.F(5);break}l=k.getValue();l.status="QUEUED";return w(m,k.update(l),
5);case 5:return m["return"](l)}})})}
function Ph(a){return N(this,function c(){var d,e,f;return x(c,function(g){switch(g.f){case 1:return w(g,Lh(),2);case 2:return d=g.g,e=ih(nh(d),"LogsRequestsStore"),w(g,e.get(a),3);case 3:return f=g.g,f.status="QUEUED",w(g,mh(e,f),4);case 4:return g["return"](f)}})})}
function Qh(a){return N(this,function c(){var d,e,f;return x(c,function(g){switch(g.f){case 1:return w(g,Lh(),2);case 2:return d=g.g,e=ih(nh(d),"LogsRequestsStore"),w(g,e.get(a),3);case 3:f=g.g;if(!f){g.F(4);break}f.status="NEW";f.sendCount+=1;return w(g,mh(e,f),4);case 4:return g["return"](f)}})})}
function Rh(){return N(this,function b(){var c,d;return x(b,function(e){if(1==e.f)return w(e,Lh(),2);if(3!=e.f)return c=e.g,w(e,c.count("LogsRequestsStore"),3);d=e.g;return e["return"](!d)})})}
function Sh(a){return N(this,function c(){var d;return x(c,function(e){if(1==e.f)return w(e,Lh(),2);d=e.g;return e["return"](d["delete"]("LogsRequestsStore",a))})})}
function Nh(){return N(this,function b(){var c;return x(b,function(d){if(1==d.f){dh.f||(dh.f=new dh);var e={};var f=fd([]);f&&(e.Authorization=f,e["X-Goog-AuthUser"]=R("SESSION_INDEX",0),"INNERTUBE_HOST_OVERRIDE"in De||(e["X-Origin"]=window.location.origin),T("pageid_as_header_web")&&"DELEGATED_SESSION_ID"in De&&(e["X-Goog-PageId"]=R("DELEGATED_SESSION_ID")));e=Yd(e);return w(d,e,2)}c=d.g;return d["return"](Xg(c))})})}
;var Th=We("network_polling_interval",3E4);function Uh(){this.i=0;this.f=window.navigator.onLine;Vh(this);Wh(this)}
function Xh(){Uh.f||(Uh.f=new Uh);return Uh.f}
function Yh(a){var b=Zh,c=$h;ai(a);(new O(function(d){a.g=d})).then(function(){b();
c&&(a.h=c)})}
function Wh(a){window.addEventListener("online",function(){a.f=!0;a.g&&a.g()})}
function Vh(a){window.addEventListener("offline",function(){a.f=!1;a.h&&a.h()})}
function ai(a){a.i||(bi(a),window.navigator.onLine&&a.g&&a.g())}
function bi(a){a.i=Yf(function(){window.navigator.onLine?(!1===a.f&&S(Error("NetworkStatusManager missed online event.")),a.f=!0,a.g&&a.g()):(!0===a.f&&S(Error("NetworkStatusManager missed offline event.")),a.f=!1,a.h&&a.h());bi(a)},Th)}
;var ci=We("networkless_throttle_timeout")||100,di=We("networkless_retry_attempts")||1,ei=0;function fi(a,b){b=void 0===b?{}:b;gi().then(function(c){if(c&&!T("networkless_bypass_write")){var d={url:a,options:b,timestamp:W(),status:"NEW",sendCount:0};Mh(d).then(function(e){d.id=e;e=Xh();e.f&&!T("networkless_always_offline")?hi(d):Yh(e)})["catch"](function(e){hi(d);
S(e)})}else jf(a,b)})}
function Zh(){ei||(ei=$f(function(){hi();ei=0;Zh()},ci))}
function $h(){bg(ei);ei=0}
function hi(a){N(this,function c(){var d=this,e,f,g,h;return x(c,function(k){switch(k.f){case 1:e=d;if(!a)return w(k,Oh(),6);if(!a.id){k.F(3);break}return w(k,Ph(a.id),5);case 5:a=k.g;k.F(3);break;case 6:if(a=k.g){k.F(3);break}return w(k,Rh(),8);case 8:return(f=k.g)&&$h(),k["return"]();case 3:if(ii(a))g=a.options.onError?a.options.onError:function(){},h=a.options.onSuccess?a.options.onSuccess:function(){},a.options.onError=function(l,m){return N(e,function u(){return x(u,function(q){if(1==q.f)return a&&
a.id?a.sendCount<di?w(q,Qh(a.id),6):w(q,Sh(a.id),2):q.F(2);
2!=q.f&&(ei||Yh(Xh()),g(l,m));g(l,m);q.f=0})})},a.options.onSuccess=function(l,m){return N(e,function u(){return x(u,function(q){if(1==q.f)return a&&a.id?w(q,Sh(a.id),2):q.F(2);
h(l,m);q.f=0})})},jf(a.url,a.options);
else if(Me(Error("Networkless Logging: Stored logs request expired age limit")),a.id)return w(k,Sh(a.id),0);k.F(0)}})})}
function ii(a){a=a.timestamp;return 2592E6<=W()-a?!1:!0}
function gi(){return T("networkless_logging")?2===We("networkless_ytidb_version")?Dh():Yd(zh()):Yd(!1)}
;function ji(a,b){for(var c=[],d=1;d<arguments.length;++d)c[d-1]=arguments[d];d=Error.call(this,a);this.message=d.message;"stack"in d&&(this.stack=d.stack);this.args=[].concat(c instanceof Array?c:fa(t(c)))}
v(ji,Error);function ki(a){var b=this;this.f=null;a?this.f=a:Ug()&&(this.f=Ng());Yf(function(){ch(b)},5E3)}
ki.prototype.isReady=function(){!this.f&&Ug()&&(this.f=Ng());return!!this.f};
function Qg(a,b,c,d){!R("VISITOR_DATA")&&"visitor_id"!==b&&.01>Math.random()&&Me(new ji("Missing VISITOR_DATA when sending innertube request.",b,c,d));if(!a.isReady()){var e=new ji("innertube xhrclient not ready",b,c,d);S(e);e.sampleWeight=0;throw e;}var f={headers:{"Content-Type":"application/json"},method:"POST",D:c,wa:"JSON",R:function(){d.R()},
va:d.R,onSuccess:function(p,u){if(d.onSuccess)d.onSuccess(u)},
ua:function(p){if(d.onSuccess)d.onSuccess(p)},
onError:function(p,u){if(d.onError)d.onError(u)},
Ab:function(p){if(d.onError)d.onError(p)},
timeout:d.timeout,withCredentials:!0},g="";(e=a.f.Na)&&(g=e);var h=a.f.Pa||!1,k=Vg(h,g,d);Object.assign(f.headers,k);f.headers.Authorization&&!g&&(f.headers["x-origin"]=window.location.origin);e="/youtubei/"+a.f.innertubeApiVersion+"/"+b;var l={alt:"json"};a.f.Oa&&f.headers.Authorization||(l.key=a.f.innertubeApiKey);var m=Qe(""+g+e,l||{},!0);gi().then(function(p){if(d.retry&&T("retry_web_logging_batches")&&"www.youtube-nocookie.com"!=g){if(T("networkless_gel")&&!p||!T("networkless_gel"))var u=ah(b,
c,k,h);if(u){var q=f.onSuccess,B=f.ua;f.onSuccess=function(E,U){bh(u);q(E,U)};
c.ua=function(E,U){bh(u);B(E,U)}}}try{T("use_fetch_for_op_xhr")?ff(m,f):T("networkless_gel")&&d.retry?(f.method="POST",fi(m,f)):(f.method="POST",f.D||(f.D={}),jf(m,f))}catch(E){if("InvalidAccessError"==E.name)u&&(bh(u),u=0),Me(Error("An extension is blocking network request."));
else throw E;}u&&Yf(function(){ch(a)},5E3)})}
;function li(a,b,c){c=void 0===c?{}:c;var d=ki;R("ytLoggingEventsDefaultDisabled",!1)&&ki==ki&&(d=null);Sg(a,b,d,c)}
;var mi=[{sa:function(a){return"Cannot read property '"+a.key+"'"},
ma:{TypeError:[{regexp:/Cannot read property '([^']+)' of (null|undefined)/,groups:["key","value"]},{regexp:/\u65e0\u6cd5\u83b7\u53d6\u672a\u5b9a\u4e49\u6216 (null|undefined) \u5f15\u7528\u7684\u5c5e\u6027\u201c([^\u201d]+)\u201d/,groups:["value","key"]},{regexp:/\uc815\uc758\ub418\uc9c0 \uc54a\uc74c \ub610\ub294 (null|undefined) \ucc38\uc870\uc778 '([^']+)' \uc18d\uc131\uc744 \uac00\uc838\uc62c \uc218 \uc5c6\uc2b5\ub2c8\ub2e4./,groups:["value","key"]},{regexp:/No se puede obtener la propiedad '([^']+)' de referencia nula o sin definir/,
groups:["key"]},{regexp:/Unable to get property '([^']+)' of (undefined or null) reference/,groups:["key","value"]}],Error:[{regexp:/(Permission denied) to access property "([^']+)"/,groups:["reason","key"]}]}},{sa:function(a){return"Cannot call '"+a.key+"'"},
ma:{TypeError:[{regexp:/(?:([^ ]+)?\.)?([^ ]+) is not a function/,groups:["base","key"]},{regexp:/Object (.*) has no method '([^ ]+)'/,groups:["base","key"]},{regexp:/Object doesn't support property or method '([^ ]+)'/,groups:["key"]},{regexp:/\u30aa\u30d6\u30b8\u30a7\u30af\u30c8\u306f '([^']+)' \u30d7\u30ed\u30d1\u30c6\u30a3\u307e\u305f\u306f\u30e1\u30bd\u30c3\u30c9\u3092\u30b5\u30dd\u30fc\u30c8\u3057\u3066\u3044\u307e\u305b\u3093/,groups:["key"]},{regexp:/\uac1c\uccb4\uac00 '([^']+)' \uc18d\uc131\uc774\ub098 \uba54\uc11c\ub4dc\ub97c \uc9c0\uc6d0\ud558\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4./,
groups:["key"]}]}}];function ni(){this.f=[];this.g=[];this.h=[]}
var oi;function pi(a){for(var b=oi,c=t(b.f),d=c.next();!d.done;d=c.next())if(d=d.value,a.message&&a.message.match(d.f))return d.weight;c=t(b.g);for(d=c.next();!d.done;d=c.next())if(d=d.value,a.stack&&a.stack.match(d.f))return d.weight;a=t(b.h);for(b=a.next();!b.done;b=a.next())if(b=b.value,qf(b.f.toLowerCase()))return b.weight;return 1}
;var qi=new Set,ri=0,si=["PhantomJS","Googlebot","TO STOP THIS SECURITY SCAN go/scan"];function ti(a){ui(a,"WARNING")}
function ui(a,b,c,d,e,f){f=void 0===f?{}:f;f.name=c||R("INNERTUBE_CONTEXT_CLIENT_NAME",1);f.version=d||R("INNERTUBE_CONTEXT_CLIENT_VERSION",void 0);c=f||{};b=void 0===b?"ERROR":b;b=void 0===b?"ERROR":b;var g=void 0===g?!1:g;if(a&&(T("console_log_js_exceptions")&&(d=[],d.push("Name: "+a.name),d.push("Message: "+a.message),a.hasOwnProperty("params")&&d.push("Error Params: "+JSON.stringify(a.params)),d.push("File name: "+a.fileName),d.push("Stacktrace: "+a.stack),window.console.log(d.join("\n"),a)),
(window&&window.yterr||g)&&!(5<=ri)&&0!==a.sampleWeight)){var h=wc(a);g=h.message||"Unknown Error";d=h.name||"UnknownError";e=h.lineNumber||"Not available";f=h.fileName||"Not available";h=h.stack||a.f||"Not available";if(a.hasOwnProperty("args")&&a.args&&a.args.length)for(var k=0,l=0;l<a.args.length;l++){var m=a.args[l],p="params."+l;k+=p.length;if(m)if(Array.isArray(m))for(var u=c,q=0;q<m.length&&!(m[q]&&(k+=vi(q,m[q],p,u),500<k));q++);else if("object"===typeof m)for(u in u=void 0,q=c,m){if(m[u]&&
(k+=vi(u,m[u],p,q),500<k))break}else c[p]=String(JSON.stringify(m)).substring(0,500),k+=c[p].length;else c[p]=String(JSON.stringify(m)).substring(0,500),k+=c[p].length;if(500<=k)break}else if(a.hasOwnProperty("params")&&a.params)if(m=a.params,"object"===typeof a.params)for(l in p=0,m){if(m[l]&&(k="params."+l,u=String(JSON.stringify(m[l])).substr(0,500),c[k]=u,p+=k.length+u.length,500<p))break}else c.params=String(JSON.stringify(m)).substr(0,500);navigator.vendor&&!c.hasOwnProperty("vendor")&&(c.vendor=
navigator.vendor);c={message:g,name:d,lineNumber:e,fileName:f,stack:h,params:c};a=Number(a.columnNumber);isNaN(a)||(c.lineNumber=c.lineNumber+":"+a);a=t(mi);for(g=a.next();!g.done;g=a.next())if(g=g.value,g.ma[c.name])for(e=t(g.ma[c.name]),d=e.next();!d.done;d=e.next())if(f=d.value,d=c.message.match(f.regexp)){c.params["error.original"]=d[0];e=f.groups;f={};for(h=0;h<e.length;h++)f[e[h]]=d[h+1],c.params["error."+e[h]]=d[h+1];c.message=g.sa(f);break}window.yterr&&"function"===typeof window.yterr&&window.yterr(c);
if(!(qi.has(c.message)||0<=c.stack.indexOf("/YouTubeCenter.js")||0<=c.stack.indexOf("/mytube.js"))){if(T("kevlar_gel_error_routing")){a=b;a:{g=t(si);for(d=g.next();!d.done;d=g.next())if(qf(d.value.toLowerCase())){g=!0;break a}g=!1}if(!g){d={stackTrace:c.stack};c.fileName&&(d.filename=c.fileName);g=c.lineNumber&&c.lineNumber.split?c.lineNumber.split(":"):[];0!==g.length&&(1!==g.length||isNaN(Number(g[0]))?2!==g.length||isNaN(Number(g[0]))||isNaN(Number(g[1]))||(d.lineNumber=Number(g[0]),d.columnNumber=
Number(g[1])):d.lineNumber=Number(g[0]));g=c.message;e=c.name;oi||(oi=new ni);g={level:"ERROR_LEVEL_UNKNOWN",message:g,errorClassName:e,sampleWeight:pi(c)};"ERROR"===a?g.level="ERROR_LEVEL_ERROR":"WARNING"===a&&(g.level="ERROR_LEVEL_WARNNING");a={isObfuscated:!0,browserStackInfo:d};d={pageUrl:window.location.href,kvPairs:[]};if(e=c.params)for(f=t(Object.keys(e)),h=f.next();!h.done;h=f.next())h=h.value,d.kvPairs.push({key:"client."+h,value:String(e[h])});li("clientError",{errorMetadata:d,stackTrace:a,
logMessage:g});Jg()}}a=c.params||{};b={gb:{a:"logerror",t:"jserror",type:c.name,msg:c.message.substr(0,250),line:c.lineNumber,level:b,"client.name":a.name},D:{url:R("PAGE_NAME",window.location.href),file:c.fileName},method:"POST"};a.version&&(b["client.version"]=a.version);if(b.D){c.stack&&(b.D.stack=c.stack);g=t(Object.keys(a));for(d=g.next();!d.done;d=g.next())d=d.value,b.D["client."+d]=a[d];if(a=R("LATEST_ECATCHER_SERVICE_TRACKING_PARAMS",void 0))for(g=t(Object.keys(a)),d=g.next();!d.done;d=g.next())d=
d.value,b.D[d]=a[d];a=R("SERVER_NAME",void 0);g=R("SERVER_VERSION",void 0);a&&g&&(b.D["server.name"]=a,b.D["server.version"]=g)}jf(R("ECATCHER_REPORT_HOST","")+"/error_204",b);qi.add(c.message);ri++}}}
function vi(a,b,c,d){c+="."+a;a=String(JSON.stringify(b)).substr(0,500);d[c]=a;return c.length+a.length}
;function wi(){this.g=!1;this.f=null}
wi.prototype.initialize=function(a,b,c,d,e,f){var g=this;f=void 0===f?!1:f;b?(this.g=!0,Qf(b,function(){g.g=!1;window.botguard?xi(g,c,d,f):(Vf(b),ti(new ji("Unable to load Botguard","from "+b)))},e)):a&&(eval(a),window.botguard?xi(this,c,d,f):ti(Error("Unable to load Botguard from JS")))};
function xi(a,b,c,d){if(d)try{a.f=new window.botguard.bg(b,c?function(){return c(b)}:Ha)}catch(e){ti(e)}else{try{a.f=new window.botguard.bg(b)}catch(e){ti(e)}c&&c(b)}}
wi.prototype.dispose=function(){this.f=null};var yi=new wi;function zi(){return!!yi.f}
function Ai(a){a=void 0===a?{}:a;a=void 0===a?{}:a;return yi.f?yi.f.invoke(void 0,void 0,a):null}
;var Bi=D().toString();
function Ci(){a:{if(window.crypto&&window.crypto.getRandomValues)try{var a=Array(16),b=new Uint8Array(16);window.crypto.getRandomValues(b);for(var c=0;c<a.length;c++)a[c]=b[c];var d=a;break a}catch(e){}d=Array(16);for(a=0;16>a;a++){b=D();for(c=0;c<b%23;c++)d[a]=Math.random();d[a]=Math.floor(256*Math.random())}if(Bi)for(a=1,b=0;b<Bi.length;b++)d[a%16]=d[a%16]^d[(a-1)%16]/4^Bi.charCodeAt(b),a++}a=[];for(b=0;b<d.length;b++)a.push("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_".charAt(d[b]&63));
return a.join("")}
;var Di=y.ytLoggingDocDocumentNonce_||Ci();z("ytLoggingDocDocumentNonce_",Di,void 0);var Ei=1;function Fi(a){this.f=a}
Fi.prototype.getAsJson=function(){var a={};void 0!==this.f.trackingParams?a.trackingParams=this.f.trackingParams:(a.veType=this.f.veType,void 0!==this.f.veCounter&&(a.veCounter=this.f.veCounter),void 0!==this.f.elementIndex&&(a.elementIndex=this.f.elementIndex));void 0!==this.f.dataElement&&(a.dataElement=this.f.dataElement.getAsJson());void 0!==this.f.youtubeData&&(a.youtubeData=this.f.youtubeData);return a};
Fi.prototype.toString=function(){return JSON.stringify(this.getAsJson())};
Fi.prototype.isClientVe=function(){return!this.f.trackingParams&&!!this.f.veType};function Gi(a){a=void 0===a?0:a;return 0==a?"client-screen-nonce":"client-screen-nonce."+a}
function Hi(a){a=void 0===a?0:a;return 0==a?"ROOT_VE_TYPE":"ROOT_VE_TYPE."+a}
function Ii(a){return R(Hi(void 0===a?0:a),void 0)}
z("yt_logging_screen.getRootVeType",Ii,void 0);function Ji(){var a=Ii(0),b;a?b=new Fi({veType:a,youtubeData:void 0}):b=null;return b}
function Ki(){var a=R("csn-to-ctt-auth-info");a||(a={},Q("csn-to-ctt-auth-info",a));return a}
function Li(a){a=void 0===a?0:a;var b=R(Gi(a));if(!b&&!R("USE_CSN_FALLBACK",!0))return null;b||0!=a||(T("kevlar_client_side_screens")||T("c3_client_side_screens")?b="UNDEFINED_CSN":b=R("EVENT_ID"));return b?b:null}
z("yt_logging_screen.getCurrentCsn",Li,void 0);function Mi(a,b,c){var d=Ki();(c=Li(c))&&delete d[c];b&&(d[a]=b)}
function Ni(a){return Ki()[a]}
z("yt_logging_screen.getCttAuthInfo",Ni,void 0);function Oi(a,b,c,d){c=void 0===c?0:c;if(a!==R(Gi(c))||b!==R(Hi(c)))if(Mi(a,d,c),Q(Gi(c),a),Q(Hi(c),b),0==c||T("web_screen_associated_all_layers"))b=function(){setTimeout(function(){a&&Sg("foregroundHeartbeatScreenAssociated",{clientDocumentNonce:Di,clientScreenNonce:a},ki)},0)},"requestAnimationFrame"in window?window.requestAnimationFrame(b):b()}
z("yt_logging_screen.setCurrentScreen",Oi,void 0);function Pi(a,b,c){b=void 0===b?{}:b;c=void 0===c?!1:c;var d=R("EVENT_ID");d&&(b.ei||(b.ei=d));if(b){d=a;var e=void 0===e?!0:e;var f=R("VALID_SESSION_TEMPDATA_DOMAINS",[]),g=K(window.location.href);g&&f.push(g);g=K(d);if(0<=Ya(f,g)||!g&&0==d.lastIndexOf("/",0))if(T("autoescape_tempdata_url")&&(f=document.createElement("a"),Tb(f,d),d=f.href),d){g=d.match(Yb);d=g[5];f=g[6];g=g[7];var h="";d&&(h+=d);f&&(h+="?"+f);g&&(h+="#"+g);d=h;f=d.indexOf("#");if(d=0>f?d:d.substr(0,f))if(e&&!b.csn&&(b.itct||b.ved)&&
(b=Object.assign({csn:Li()},b)),k){var k=parseInt(k,10);isFinite(k)&&0<k&&(e=b,b="ST-"+Xb(d).toString(36),e=e?ac(e):"",zf(b,e,k||5))}else k=b,e="ST-"+Xb(d).toString(36),k=k?ac(k):"",zf(e,k,5)}}if(c)return!1;if((window.ytspf||{}).enabled)spf.navigate(a);else{var l=void 0===l?{}:l;var m=void 0===m?"":m;var p=void 0===p?window:p;c=p.location;a=bc(a,l)+m;a=a instanceof I?a:Lb(a);c.href=Hb(a)}return!0}
;function Qi(a,b){this.version=a;this.args=b}
;function Ri(a,b){this.topic=a;this.f=b}
Ri.prototype.toString=function(){return this.topic};var Si=A("ytPubsub2Pubsub2Instance")||new P;P.prototype.subscribe=P.prototype.subscribe;P.prototype.unsubscribeByKey=P.prototype.P;P.prototype.publish=P.prototype.O;P.prototype.clear=P.prototype.clear;z("ytPubsub2Pubsub2Instance",Si,void 0);var Ti=A("ytPubsub2Pubsub2SubscribedKeys")||{};z("ytPubsub2Pubsub2SubscribedKeys",Ti,void 0);var Ui=A("ytPubsub2Pubsub2TopicToKeys")||{};z("ytPubsub2Pubsub2TopicToKeys",Ui,void 0);var Vi=A("ytPubsub2Pubsub2IsAsync")||{};z("ytPubsub2Pubsub2IsAsync",Vi,void 0);
z("ytPubsub2Pubsub2SkipSubKey",null,void 0);function Wi(a,b){var c=Xi();c&&c.publish.call(c,a.toString(),a,b)}
function Yi(a){var b=Zi,c=Xi();if(!c)return 0;var d=c.subscribe(b.toString(),function(e,f){var g=A("ytPubsub2Pubsub2SkipSubKey");g&&g==d||(g=function(){if(Ti[d])try{if(f&&b instanceof Ri&&b!=e)try{var h=b.f,k=f;if(!k.args||!k.version)throw Error("yt.pubsub2.Data.deserialize(): serializedData is incomplete.");try{if(!h.J){var l=new h;h.J=l.version}var m=h.J}catch(p){}if(!m||k.version!=m)throw Error("yt.pubsub2.Data.deserialize(): serializedData version is incompatible.");try{f=Reflect.construct(h,
db(k.args))}catch(p){throw p.message="yt.pubsub2.Data.deserialize(): "+p.message,p;}}catch(p){throw p.message="yt.pubsub2.pubsub2 cross-binary conversion error for "+b.toString()+": "+p.message,p;}a.call(window,f)}catch(p){S(p)}},Vi[b.toString()]?A("yt.scheduler.instance")?$f(g):V(g,0):g())});
Ti[d]=!0;Ui[b.toString()]||(Ui[b.toString()]=[]);Ui[b.toString()].push(d);return d}
function $i(){var a=aj,b=Yi(function(c){a.apply(void 0,arguments);bj(b)});
return b}
function bj(a){var b=Xi();b&&("number"===typeof a&&(a=[a]),H(a,function(c){b.unsubscribeByKey(c);delete Ti[c]}))}
function Xi(){return A("ytPubsub2Pubsub2Instance")}
;function cj(a){Qi.call(this,1,arguments);this.csn=a}
v(cj,Qi);var Zi=new Ri("screen-created",cj),dj=[],ej=0;function fj(a,b,c){var d=T("use_default_events_client")?void 0:ki;b={csn:a,parentVe:b.getAsJson(),childVes:$a(c,function(f){return f.getAsJson()})};
c=t(c);for(var e=c.next();!e.done;e=c.next())e=e.value.getAsJson(),(jb(e)||!e.trackingParams&&!e.veType)&&ti(Error("Child VE logged with no data"));c={fa:Ni(a),S:a};"UNDEFINED_CSN"==a?gj("visualElementAttached",b,c):d?Sg("visualElementAttached",b,d,c):li("visualElementAttached",b,c)}
function gj(a,b,c){dj.push({payloadName:a,payload:b,options:c});ej||(ej=$i())}
function aj(a){if(dj){for(var b=t(dj),c=b.next();!c.done;c=b.next())c=c.value,c.payload&&(c.payload.csn=a.csn,Sg(c.payloadName,c.payload,null,c.options));dj.length=0}ej=0}
;function hj(a){a=a||{};var b={},c={};this.url=a.url||"";this.args=a.args||mb(b);this.assets=a.assets||{};this.attrs=a.attrs||mb(c);this.fallback=a.fallback||null;this.fallbackMessage=a.fallbackMessage||null;this.html5=!!a.html5;this.disable=a.disable||{};this.loaded=!!a.loaded;this.messages=a.messages||{}}
hj.prototype.clone=function(){var a=new hj,b;for(b in this)if(this.hasOwnProperty(b)){var c=this[b];"object"==Ja(c)?a[b]=mb(c):a[b]=c}return a};function ij(){M.call(this);this.f=[]}
v(ij,M);ij.prototype.o=function(){for(;this.f.length;){var a=this.f.pop();a.target.removeEventListener(a.name,a.ub)}M.prototype.o.call(this)};var jj=/cssbin\/(?:debug-)?([a-zA-Z0-9_-]+?)(?:-2x|-web|-rtl|-vfl|.css)/;function kj(a){a=a||"";if(window.spf){var b=a.match(jj);spf.style.load(a,b?b[1]:"",void 0)}else lj(a)}
function lj(a){var b=mj(a),c=document.getElementById(b),d=c&&Cf(c,"loaded");d||c&&!d||(c=nj(a,b,function(){Cf(c,"loaded")||(Af(c),Lf(b),V(Sa(Mf,b),0))}))}
function nj(a,b,c){var d=document.createElement("link");d.id=b;d.onload=function(){c&&setTimeout(c,0)};
a=Nc(a);d.rel="stylesheet";d.href=vb(a).toString();(document.getElementsByTagName("head")[0]||document.body).appendChild(d);return d}
function mj(a){var b=Jc(document,"A");Tb(b,new I(Fb,a));a=b.href.replace(/^[a-zA-Z]+:\/\//,"//");return"css-"+Xb(a)}
;function oj(a,b,c,d){M.call(this);var e=this;this.m=this.Z=a;this.W=b;this.u=!1;this.api={};this.X=this.G=null;this.H=new P;Uc(this,Sa(Vc,this.H));this.j={};this.T=this.Y=this.h=this.ea=this.f=null;this.K=!1;this.l=this.C=null;this.aa={};this.za=["onReady"];this.da=null;this.na=NaN;this.U={};this.i=d;pj(this);this.ba("WATCH_LATER_VIDEO_ADDED",this.Ra.bind(this));this.ba("WATCH_LATER_VIDEO_REMOVED",this.Sa.bind(this));this.ba("onAdAnnounce",this.Ba.bind(this));this.Aa=new ij(this);Uc(this,Sa(Vc,this.Aa));
this.V=0;c?this.V=V(function(){e.loadNewVideoConfig(c)},0):d&&(qj(this),rj(this))}
v(oj,M);n=oj.prototype;n.getId=function(){return this.W};
n.loadNewVideoConfig=function(a){if(!this.g){this.V&&($e(this.V),this.V=0);a instanceof hj||(a=new hj(a));this.ea=a;this.f=a.clone();qj(this);this.Y||(this.Y=sj(this,this.f.args.jsapicallback||"onYouTubePlayerReady"));this.f.args.jsapicallback=null;if(a=this.f.attrs.width)this.m.style.width=$c(Number(a)||a);if(a=this.f.attrs.height)this.m.style.height=$c(Number(a)||a);rj(this);this.u&&tj(this)}};
function qj(a){var b;a.i?b=a.i.rootElementId:b=a.f.attrs.id;a.h=b||a.h;"video-player"==a.h&&(a.h=a.W,a.f.attrs.id=a.W);a.m.id==a.h&&(a.h+="-player",a.f.attrs.id=a.h)}
n.Fa=function(){return this.ea};
function tj(a){a.f&&!a.f.loaded&&(a.f.loaded=!0,"0"!=a.f.args.autoplay?a.api.loadVideoByPlayerVars(a.f.args):a.api.cueVideoByPlayerVars(a.f.args))}
function uj(a){var b=!0,c=vj(a);c&&a.f&&(a=wj(a),b=Cf(c,"version")===a);return b&&!!A("yt.player.Application.create")}
function rj(a){if(!a.g&&!a.K){var b=uj(a);if(b&&"html5"==(vj(a)?"html5":null))a.T="html5",a.u||xj(a);else if(yj(a),a.T="html5",b&&a.l)a.Z.appendChild(a.l),xj(a);else{a.f&&(a.f.loaded=!0);var c=!1;a.C=function(){c=!0;var d=zj(a,"player_bootstrap_method")?A("yt.player.Application.createAlternate")||A("yt.player.Application.create"):A("yt.player.Application.create");var e=a.f?a.f.clone():void 0;d(a.Z,e,a.i);xj(a)};
a.K=!0;b?a.C():(Qf(wj(a),a.C),(b=a.i?a.i.cssUrl:a.f.assets.css)&&kj(b),Aj(a)&&!c&&z("yt.player.Application.create",null,void 0))}}}
function vj(a){var b=Fc(a.h);!b&&a.m&&a.m.querySelector&&(b=a.m.querySelector("#"+a.h));return b}
function xj(a){if(!a.g){var b=vj(a),c=!1;b&&b.getApiInterface&&b.getApiInterface()&&(c=!0);c?(a.K=!1,!zj(a,"html5_remove_not_servable_check_killswitch")&&b.isNotServable&&a.f&&b.isNotServable(a.f.args.video_id)||Bj(a)):a.na=V(function(){xj(a)},50)}}
function Bj(a){pj(a);a.u=!0;var b=vj(a);b.addEventListener&&(a.G=Cj(a,b,"addEventListener"));b.removeEventListener&&(a.X=Cj(a,b,"removeEventListener"));var c=b.getApiInterface();c=c.concat(b.getInternalApiInterface());for(var d=0;d<c.length;d++){var e=c[d];a.api[e]||(a.api[e]=Cj(a,b,e))}for(var f in a.j)a.G(f,a.j[f]);tj(a);a.Y&&a.Y(a.api);a.H.O("onReady",a.api)}
function Cj(a,b,c){var d=b[c];return function(){try{return a.da=null,d.apply(b,arguments)}catch(e){"sendAbandonmentPing"!=c&&(e.params=c,a.da=e,Me(e))}}}
function pj(a){a.u=!1;if(a.X)for(var b in a.j)a.X(b,a.j[b]);for(var c in a.U)$e(parseInt(c,10));a.U={};a.G=null;a.X=null;for(var d in a.api)a.api[d]=null;a.api.addEventListener=a.ba.bind(a);a.api.removeEventListener=a.Wa.bind(a);a.api.destroy=a.dispose.bind(a);a.api.getLastError=a.Ga.bind(a);a.api.getPlayerType=a.Ha.bind(a);a.api.getCurrentVideoConfig=a.Fa.bind(a);a.api.loadNewVideoConfig=a.loadNewVideoConfig.bind(a);a.api.isReady=a.Qa.bind(a)}
n.Qa=function(){return this.u};
n.ba=function(a,b){var c=this,d=sj(this,b);if(d){if(!(0<=Ya(this.za,a)||this.j[a])){var e=Dj(this,a);this.G&&this.G(a,e)}this.H.subscribe(a,d);"onReady"==a&&this.u&&V(function(){d(c.api)},0)}};
n.Wa=function(a,b){if(!this.g){var c=sj(this,b);c&&le(this.H,a,c)}};
function sj(a,b){var c=b;if("string"==typeof b){if(a.aa[b])return a.aa[b];c=function(){var d=A(b);d&&d.apply(y,arguments)};
a.aa[b]=c}return c?c:null}
function Dj(a,b){var c="ytPlayer"+b+a.W;a.j[b]=c;y[c]=function(d){var e=V(function(){if(!a.g){a.H.O(b,d);var f=a.U,g=String(e);g in f&&delete f[g]}},0);
kb(a.U,String(e))};
return c}
n.Ba=function(a){Lf("a11y-announce",a)};
n.Ra=function(a){Lf("WATCH_LATER_VIDEO_ADDED",a)};
n.Sa=function(a){Lf("WATCH_LATER_VIDEO_REMOVED",a)};
n.Ha=function(){return this.T||(vj(this)?"html5":null)};
n.Ga=function(){return this.da};
function yj(a){a.cancel();pj(a);a.T=null;a.f&&(a.f.loaded=!1);var b=vj(a);b&&(uj(a)||!Aj(a)?a.l=b:(b&&b.destroy&&b.destroy(),a.l=null));for(a=a.Z;b=a.firstChild;)a.removeChild(b)}
n.cancel=function(){if(this.C){var a=wj(this);Wf(a,this.C)}$e(this.na);this.K=!1};
n.o=function(){yj(this);if(this.l&&this.f&&this.l.destroy)try{this.l.destroy()}catch(b){S(b)}this.aa=null;for(var a in this.j)y[this.j[a]]=null;this.ea=this.f=this.api=null;delete this.Z;delete this.m;M.prototype.o.call(this)};
function Aj(a){return a.f&&a.f.args&&a.f.args.fflags?-1!=a.f.args.fflags.indexOf("player_destroy_old_version=true"):!1}
function wj(a){return a.i?a.i.jsUrl:a.f.assets.js}
function zj(a,b){if(a.i)var c=a.i.serializedExperimentFlags;else a.f&&a.f.args&&(c=a.f.args.fflags);return"true"==Ne(c||"")[b]}
;var Ej={},Fj="player_uid_"+(1E9*Math.random()>>>0);
function Gj(a,b,c){var d="player";c=void 0===c?!0:c;var e;"string"===typeof d?e=Fc(d):e=d;d=e;e=Fj+"_"+Na(d);var f=Ej[e];if(f&&c)return(b&&b.serializedExperimentFlags?b.serializedExperimentFlags.includes("web_player_remove_playerproxy=true"):a&&a.args&&a.args.fflags&&a.args.fflags.includes("web_player_remove_playerproxy=true"))?f.api.loadVideoByPlayerVars(a.args||null):f.loadNewVideoConfig(a),f.api;f=new oj(d,e,a,b);Ej[e]=f;Lf("player-added",f.api);Uc(f,Sa(Hj,f));return f.api}
function Hj(a){delete Ej[a.getId()]}
;function Ij(a){return(0===a.search("cue")||0===a.search("load"))&&"loadModule"!==a}
function Jj(a,b,c){"string"===typeof a&&(a={mediaContentUrl:a,startSeconds:b,suggestedQuality:c});a:{if((b=a.mediaContentUrl)&&(b=/\/([ve]|embed)\/([^#?]+)/.exec(b))&&b[2]){b=b[2];break a}b=null}a.videoId=b;return Kj(a)}
function Kj(a,b,c){if("string"===typeof a)return{videoId:a,startSeconds:b,suggestedQuality:c};b=["endSeconds","startSeconds","mediaContentUrl","suggestedQuality","videoId"];c={};for(var d=0;d<b.length;d++){var e=b[d];a[e]&&(c[e]=a[e])}return c}
function Lj(a,b,c,d){if(Ma(a)&&!Array.isArray(a)){b="playlist list listType index startSeconds suggestedQuality".split(" ");c={};for(d=0;d<b.length;d++){var e=b[d];a[e]&&(c[e]=a[e])}return c}b={index:b,startSeconds:c,suggestedQuality:d};"string"===typeof a&&16===a.length?b.list="PL"+a:b.playlist=a;return b}
;function Mj(a){a=void 0===a?!1:a;M.call(this);this.f=new P(a);Uc(this,Sa(Vc,this.f))}
F(Mj,M);Mj.prototype.subscribe=function(a,b,c){return this.g?0:this.f.subscribe(a,b,c)};
Mj.prototype.j=function(a,b){this.g||this.f.O.apply(this.f,arguments)};function Nj(a,b,c){Mj.call(this);this.h=a;this.i=b;this.l=c}
v(Nj,Mj);function Oj(a,b,c){if(!a.g){var d=a.h;d.g||a.i!=d.f||(a={id:a.l,command:b},c&&(a.data=c),d.f.postMessage(Nd(a),d.i))}}
Nj.prototype.o=function(){this.i=this.h=null;Mj.prototype.o.call(this)};function Pj(a){M.call(this);this.f=a;this.f.subscribe("command",this.xa,this);this.h={};this.j=!1}
v(Pj,M);n=Pj.prototype;n.start=function(){this.j||this.g||(this.j=!0,Oj(this.f,"RECEIVING"))};
n.xa=function(a,b,c){if(this.j&&!this.g){var d=b||{};switch(a){case "addEventListener":"string"===typeof d.event&&(a=d.event,a in this.h||(c=C(this.Ya,this,a),this.h[a]=c,this.addEventListener(a,c)));break;case "removeEventListener":"string"===typeof d.event&&Qj(this,d.event);break;default:this.i.isReady()&&this.i.isExternalMethodAvailable(a,c||null)&&(b=Rj(a,b||{}),c=this.i.handleExternalCall(a,b,c||null),(c=Sj(a,c))&&this.j&&!this.g&&Oj(this.f,a,c))}}};
n.Ya=function(a,b){this.j&&!this.g&&Oj(this.f,a,this.ha(a,b))};
n.ha=function(a,b){if(null!=b)return{value:b}};
function Qj(a,b){b in a.h&&(a.removeEventListener(b,a.h[b]),delete a.h[b])}
n.o=function(){var a=this.f;a.g||le(a.f,"command",this.xa,this);this.f=null;for(var b in this.h)Qj(this,b);M.prototype.o.call(this)};function Tj(a,b){Pj.call(this,b);this.i=a;this.start()}
v(Tj,Pj);Tj.prototype.addEventListener=function(a,b){this.i.addEventListener(a,b)};
Tj.prototype.removeEventListener=function(a,b){this.i.removeEventListener(a,b)};
function Rj(a,b){switch(a){case "loadVideoById":return b=Kj(b),[b];case "cueVideoById":return b=Kj(b),[b];case "loadVideoByPlayerVars":return[b];case "cueVideoByPlayerVars":return[b];case "loadPlaylist":return b=Lj(b),[b];case "cuePlaylist":return b=Lj(b),[b];case "seekTo":return[b.seconds,b.allowSeekAhead];case "playVideoAt":return[b.index];case "setVolume":return[b.volume];case "setPlaybackQuality":return[b.suggestedQuality];case "setPlaybackRate":return[b.suggestedRate];case "setLoop":return[b.loopPlaylists];
case "setShuffle":return[b.shufflePlaylist];case "getOptions":return[b.module];case "getOption":return[b.module,b.option];case "setOption":return[b.module,b.option,b.value];case "handleGlobalKeyDown":return[b.keyCode,b.shiftKey,b.ctrlKey,b.altKey,b.metaKey,b.key,b.code]}return[]}
function Sj(a,b){switch(a){case "isMuted":return{muted:b};case "getVolume":return{volume:b};case "getPlaybackRate":return{playbackRate:b};case "getAvailablePlaybackRates":return{availablePlaybackRates:b};case "getVideoLoadedFraction":return{videoLoadedFraction:b};case "getPlayerState":return{playerState:b};case "getCurrentTime":return{currentTime:b};case "getPlaybackQuality":return{playbackQuality:b};case "getAvailableQualityLevels":return{availableQualityLevels:b};case "getDuration":return{duration:b};
case "getVideoUrl":return{videoUrl:b};case "getVideoEmbedCode":return{videoEmbedCode:b};case "getPlaylist":return{playlist:b};case "getPlaylistIndex":return{playlistIndex:b};case "getOptions":return{options:b};case "getOption":return{option:b}}}
Tj.prototype.ha=function(a,b){switch(a){case "onReady":return;case "onStateChange":return{playerState:b};case "onPlaybackQualityChange":return{playbackQuality:b};case "onPlaybackRateChange":return{playbackRate:b};case "onError":return{errorCode:b}}return Pj.prototype.ha.call(this,a,b)};
Tj.prototype.o=function(){Pj.prototype.o.call(this);delete this.i};function Uj(a,b,c){M.call(this);var d=this;c=c||R("POST_MESSAGE_ORIGIN",void 0)||window.document.location.protocol+"//"+window.document.location.hostname;this.h=b||null;this.u="*";this.i=c;this.sessionId=null;this.channel="widget";this.C=!!a;this.m=function(e){a:if(!("*"!=d.i&&e.origin!=d.i||d.h&&e.source!=d.h||"string"!==typeof e.data)){try{var f=JSON.parse(e.data)}catch(g){break a}if(!(null==f||d.C&&(d.sessionId&&d.sessionId!=f.id||d.channel&&d.channel!=f.channel))&&f)switch(f.event){case "listening":"null"!=
e.origin&&(d.i=d.u=e.origin);d.h=e.source;d.sessionId=f.id;d.f&&(d.f(),d.f=null);break;case "command":d.j&&(!d.l||0<=Ya(d.l,f.func))&&d.j(f.func,f.args,e.origin)}}};
this.l=this.f=this.j=null;window.addEventListener("message",this.m)}
v(Uj,M);Uj.prototype.sendMessage=function(a,b){var c=b||this.h;if(c){this.sessionId&&(a.id=this.sessionId);this.channel&&(a.channel=this.channel);try{var d=JSON.stringify(a);c.postMessage(d,this.u)}catch(e){Me(e)}}};
Uj.prototype.o=function(){window.removeEventListener("message",this.m);M.prototype.o.call(this)};function Vj(){var a=this.g=new Uj(!!R("WIDGET_ID_ENFORCE")),b=C(this.Va,this);a.j=b;a.l=null;this.g.channel="widget";if(a=R("WIDGET_ID"))this.g.sessionId=a;this.i=[];this.l=!1;this.j={}}
n=Vj.prototype;n.Va=function(a,b,c){"addEventListener"==a&&b?(a=b[0],this.j[a]||"onReady"==a||(this.addEventListener(a,Wj(this,a)),this.j[a]=!0)):this.ta(a,b,c)};
n.ta=function(){};
function Wj(a,b){return C(function(c){this.sendMessage(b,c)},a)}
n.addEventListener=function(){};
n.Ea=function(){this.l=!0;this.sendMessage("initialDelivery",this.ia());this.sendMessage("onReady");H(this.i,this.ya,this);this.i=[]};
n.ia=function(){return null};
function Xj(a,b){a.sendMessage("infoDelivery",b)}
n.ya=function(a){this.l?this.g.sendMessage(a):this.i.push(a)};
n.sendMessage=function(a,b){this.ya({event:a,info:void 0==b?null:b})};
n.dispose=function(){this.g=null};function Yj(a){Vj.call(this);this.f=a;this.h=[];this.addEventListener("onReady",C(this.Ta,this));this.addEventListener("onVideoProgress",C(this.cb,this));this.addEventListener("onVolumeChange",C(this.eb,this));this.addEventListener("onApiChange",C(this.Xa,this));this.addEventListener("onPlaybackQualityChange",C(this.Za,this));this.addEventListener("onPlaybackRateChange",C(this.ab,this));this.addEventListener("onStateChange",C(this.bb,this));this.addEventListener("onWebglSettingsChanged",C(this.fb,
this))}
v(Yj,Vj);n=Yj.prototype;n.ta=function(a,b,c){if(this.f.isExternalMethodAvailable(a,c)){b=b||[];if(0<b.length&&Ij(a)){var d=b;if(Ma(d[0])&&!Array.isArray(d[0]))d=d[0];else{var e={};switch(a){case "loadVideoById":case "cueVideoById":e=Kj.apply(window,d);break;case "loadVideoByUrl":case "cueVideoByUrl":e=Jj.apply(window,d);break;case "loadPlaylist":case "cuePlaylist":e=Lj.apply(window,d)}d=e}b.length=1;b[0]=d}this.f.handleExternalCall(a,b,c);Ij(a)&&Xj(this,this.ia())}};
n.Ta=function(){var a=C(this.Ea,this);this.g.f=a};
n.addEventListener=function(a,b){this.h.push({eventType:a,listener:b});this.f.addEventListener(a,b)};
n.ia=function(){if(!this.f)return null;var a=this.f.getApiInterface();cb(a,"getVideoData");for(var b={apiInterface:a},c=0,d=a.length;c<d;c++){var e=a[c];if(0===e.search("get")||0===e.search("is")){var f=0;0===e.search("get")?f=3:0===e.search("is")&&(f=2);f=e.charAt(f).toLowerCase()+e.substr(f+1);try{var g=this.f[e]();b[f]=g}catch(h){}}}b.videoData=this.f.getVideoData();b.currentTimeLastUpdated_=D()/1E3;return b};
n.bb=function(a){a={playerState:a,currentTime:this.f.getCurrentTime(),duration:this.f.getDuration(),videoData:this.f.getVideoData(),videoStartBytes:0,videoBytesTotal:this.f.getVideoBytesTotal(),videoLoadedFraction:this.f.getVideoLoadedFraction(),playbackQuality:this.f.getPlaybackQuality(),availableQualityLevels:this.f.getAvailableQualityLevels(),currentTimeLastUpdated_:D()/1E3,playbackRate:this.f.getPlaybackRate(),mediaReferenceTime:this.f.getMediaReferenceTime()};this.f.getVideoUrl&&(a.videoUrl=
this.f.getVideoUrl());this.f.getVideoContentRect&&(a.videoContentRect=this.f.getVideoContentRect());this.f.getProgressState&&(a.progressState=this.f.getProgressState());this.f.getPlaylist&&(a.playlist=this.f.getPlaylist());this.f.getPlaylistIndex&&(a.playlistIndex=this.f.getPlaylistIndex());this.f.getStoryboardFormat&&(a.storyboardFormat=this.f.getStoryboardFormat());Xj(this,a)};
n.Za=function(a){Xj(this,{playbackQuality:a})};
n.ab=function(a){Xj(this,{playbackRate:a})};
n.Xa=function(){for(var a=this.f.getOptions(),b={namespaces:a},c=0,d=a.length;c<d;c++){var e=a[c],f=this.f.getOptions(e);b[e]={options:f};for(var g=0,h=f.length;g<h;g++){var k=f[g],l=this.f.getOption(e,k);b[e][k]=l}}this.sendMessage("apiInfoDelivery",b)};
n.eb=function(){Xj(this,{muted:this.f.isMuted(),volume:this.f.getVolume()})};
n.cb=function(a){a={currentTime:a,videoBytesLoaded:this.f.getVideoBytesLoaded(),videoLoadedFraction:this.f.getVideoLoadedFraction(),currentTimeLastUpdated_:D()/1E3,playbackRate:this.f.getPlaybackRate(),mediaReferenceTime:this.f.getMediaReferenceTime()};this.f.getProgressState&&(a.progressState=this.f.getProgressState());Xj(this,a)};
n.fb=function(){var a={sphericalProperties:this.f.getSphericalProperties()};Xj(this,a)};
n.dispose=function(){Vj.prototype.dispose.call(this);for(var a=0;a<this.h.length;a++){var b=this.h[a];this.f.removeEventListener(b.eventType,b.listener)}this.h=[]};function Zj(a,b,c){M.call(this);this.f=a;this.i=c;this.j=ng(window,"message",C(this.l,this));this.h=new Nj(this,a,b);Uc(this,Sa(Vc,this.h))}
v(Zj,M);Zj.prototype.l=function(a){var b;if(b=!this.g)if(b=a.origin==this.i)a:{b=this.f;do{b:{var c=a.source;do{if(c==b){c=!0;break b}if(c==c.parent)break;c=c.parent}while(null!=c);c=!1}if(c){b=!0;break a}b=b.opener}while(null!=b);b=!1}if(b&&(b=a.data,"string"===typeof b)){try{b=JSON.parse(b)}catch(d){return}b.command&&(c=this.h,c.g||c.j("command",b.command,b.data,a.origin))}};
Zj.prototype.o=function(){og(this.j);this.f=null;M.prototype.o.call(this)};function ak(){var a=mb(bk),b;return ae(new O(function(c,d){a.onSuccess=function(e){Ze(e)?c(e):d(new ck("Request failed, status="+(e&&"status"in e?e.status:-1),"net.badstatus",e))};
a.onError=function(e){d(new ck("Unknown request error","net.unknown",e))};
a.R=function(e){d(new ck("Request timed out","net.timeout",e))};
b=jf("//googleads.g.doubleclick.net/pagead/id",a)}),function(c){c instanceof be&&b.abort();
return Zd(c)})}
function ck(a,b){G.call(this,a+", errorCode="+b);this.errorCode=b;this.name="PromiseAjaxError"}
v(ck,G);function dk(){this.g=0;this.f=null}
dk.prototype.then=function(a,b,c){return 1===this.g&&a?(a=a.call(c,this.f),Td(a)?a:ek(a)):2===this.g&&b?(a=b.call(c,this.f),Td(a)?a:fk(a)):this};
dk.prototype.getValue=function(){return this.f};
dk.prototype.$goog_Thenable=!0;function fk(a){var b=new dk;a=void 0===a?null:a;b.g=2;b.f=void 0===a?null:a;return b}
function ek(a){var b=new dk;a=void 0===a?null:a;b.g=1;b.f=void 0===a?null:a;return b}
;function gk(a){G.call(this,a.message||a.description||a.name);this.isMissing=a instanceof hk;this.isTimeout=a instanceof ck&&"net.timeout"==a.errorCode;this.isCanceled=a instanceof be}
v(gk,G);gk.prototype.name="BiscottiError";function hk(){G.call(this,"Biscotti ID is missing from server")}
v(hk,G);hk.prototype.name="BiscottiMissingError";var bk={format:"RAW",method:"GET",timeout:5E3,withCredentials:!0},ik=null;
function He(){if(T("disable_biscotti_fetch_on_html5_clients"))return Zd(Error("Fetching biscotti ID is disabled."));if(T("condition_biscotti_fetch_on_consent_cookie_html5_clients")&&!Bc.get("CONSENT","").startsWith("YES+"))return Zd(Error("User has not consented - not fetching biscotti id."));if("1"===gb(Ee(),"args","privembed"))return Zd(Error("Biscotti ID is not available in private embed mode"));ik||(ik=ae(ak().then(jk),function(a){return kk(2,a)}));
return ik}
function jk(a){a=a.responseText;if(0!=a.lastIndexOf(")]}'",0))throw new hk;a=JSON.parse(a.substr(4));if(1<(a.type||1))throw new hk;a=a.id;Ie(a);ik=ek(a);lk(18E5,2);return a}
function kk(a,b){var c=new gk(b);Ie("");ik=fk(c);0<a&&lk(12E4,a-1);throw c;}
function lk(a,b){V(function(){ae(ak().then(jk,function(c){return kk(b,c)}),Ha)},a)}
function mk(){try{var a=A("yt.ads.biscotti.getId_");return a?a():He()}catch(b){return Zd(b)}}
;function nk(a){if("1"!==gb(Ee(),"args","privembed")){a&&Ge();try{mk().then(function(){},function(){}),V(nk,18E5)}catch(b){S(b)}}}
;var Y=A("ytglobal.prefsUserPrefsPrefs_")||{};z("ytglobal.prefsUserPrefsPrefs_",Y,void 0);function ok(){this.f=R("ALT_PREF_COOKIE_NAME","PREF");var a=Bc.get(""+this.f,void 0);if(a){a=decodeURIComponent(a).split("&");for(var b=0;b<a.length;b++){var c=a[b].split("="),d=c[0];(c=c[1])&&(Y[d]=c.toString())}}}
n=ok.prototype;n.get=function(a,b){pk(a);qk(a);var c=void 0!==Y[a]?Y[a].toString():null;return null!=c?c:b?b:""};
n.set=function(a,b){pk(a);qk(a);if(null==b)throw Error("ExpectedNotNull");Y[a]=b.toString()};
n.remove=function(a){pk(a);qk(a);delete Y[a]};
n.save=function(){zf(this.f,this.dump(),63072E3)};
n.clear=function(){for(var a in Y)delete Y[a]};
n.dump=function(){var a=[],b;for(b in Y)a.push(b+"="+encodeURIComponent(String(Y[b])));return a.join("&")};
function qk(a){if(/^f([1-9][0-9]*)$/.test(a))throw Error("ExpectedRegexMatch: "+a);}
function pk(a){if(!/^\w+$/.test(a))throw Error("ExpectedRegexMismatch: "+a);}
function rk(a){a=void 0!==Y[a]?Y[a].toString():null;return null!=a&&/^[A-Fa-f0-9]+$/.test(a)?parseInt(a,16):null}
Ia(ok);function sk(a,b){for(var c=[],d=1;d<arguments.length;++d)c[d-1]=arguments[d];if(!tk(a)||c.some(function(e){return!tk(e)}))throw Error("Only objects may be merged.");
c=t(c);for(d=c.next();!d.done;d=c.next())uk(a,d.value);return a}
function uk(a,b){for(var c in b)if(tk(b[c])){if(c in a&&!tk(a[c]))throw Error("Cannot merge an object into a non-object.");c in a||(a[c]={});uk(a[c],b[c])}else if(vk(b[c])){if(c in a&&!vk(a[c]))throw Error("Cannot merge an array into a non-array.");c in a||(a[c]=[]);wk(a[c],b[c])}else a[c]=b[c];return a}
function wk(a,b){for(var c=t(b),d=c.next();!d.done;d=c.next())d=d.value,tk(d)?a.push(uk({},d)):vk(d)?a.push(wk([],d)):a.push(d);return a}
function tk(a){return"object"===typeof a&&!Array.isArray(a)}
function vk(a){return"object"===typeof a&&Array.isArray(a)}
;function xk(a,b){Qi.call(this,1,arguments)}
v(xk,Qi);function yk(a,b){Qi.call(this,1,arguments)}
v(yk,Qi);var zk=new Ri("aft-recorded",xk),Ak=new Ri("timing-sent",yk);var Bk=window;function Ck(){this.timing={};this.clearResourceTimings=function(){};
this.webkitClearResourceTimings=function(){};
this.mozClearResourceTimings=function(){};
this.msClearResourceTimings=function(){};
this.oClearResourceTimings=function(){}}
var Dk=Bk.performance||Bk.mozPerformance||Bk.msPerformance||Bk.webkitPerformance||new Ck;var Ek=!1;C(Dk.clearResourceTimings||Dk.webkitClearResourceTimings||Dk.mozClearResourceTimings||Dk.msClearResourceTimings||Dk.oClearResourceTimings||Ha,Dk);function Fk(a){var b=Gk(a);if(b.aft)return b.aft;a=R((a||"")+"TIMING_AFT_KEYS",["ol"]);for(var c=a.length,d=0;d<c;d++){var e=b[a[d]];if(e)return e}return NaN}
function Hk(a){var b;(b=A("ytcsi."+(a||"")+"data_"))||(b={tick:{},info:{}},Ta("ytcsi."+(a||"")+"data_",b));return b}
function Ik(a){a=Hk(a);a.info||(a.info={});return a.info}
function Gk(a){a=Hk(a);a.tick||(a.tick={});return a.tick}
function Jk(a){var b=Hk(a).nonce;b||(b=Ci(),Hk(a).nonce=b);return b}
function Kk(a){var b=Gk(a||""),c=Fk(a);c&&!Ek&&(Wi(zk,new xk(Math.round(c-b._start),a)),Ek=!0)}
;function Lk(){var a=A("ytcsi.debug");a||(a=[],z("ytcsi.debug",a,void 0),z("ytcsi.reference",{},void 0));return a}
function Mk(a){a=a||"";var b=A("ytcsi.reference");b||(Lk(),b=A("ytcsi.reference"));if(b[a])return b[a];var c=Lk(),d={timerName:a,info:{},tick:{},span:{}};c.push(d);return b[a]=d}
;var Nk=y.ytLoggingLatencyUsageStats_||{};z("ytLoggingLatencyUsageStats_",Nk,void 0);function Ok(){this.f=0}
function Pk(){Ok.f||(Ok.f=new Ok);return Ok.f}
Ok.prototype.tick=function(a,b,c){Qk(this,"tick_"+a+"_"+b)||li("latencyActionTicked",{tickName:a,clientActionNonce:b},{timestamp:c})};
Ok.prototype.info=function(a,b){var c=Object.keys(a).join("");Qk(this,"info_"+c+"_"+b)||(c=Object.assign({},a),c.clientActionNonce=b,li("latencyActionInfo",c))};
Ok.prototype.span=function(a,b){var c=Object.keys(a).join("");Qk(this,"span_"+c+"_"+b)||(a.clientActionNonce=b,li("latencyActionSpan",a))};
function Qk(a,b){Nk[b]=Nk[b]||{count:0};var c=Nk[b];c.count++;c.time=W();a.f||(a.f=Yf(function(){var d=W(),e;for(e in Nk)Nk[e]&&6E4<d-Nk[e].time&&delete Nk[e];a&&(a.f=0)},5E3));
return 5<c.count?(6===c.count&&1>1E5*Math.random()&&(c=new ji("CSI data exceeded logging limit with key",b.split("_")),0<=b.indexOf("plev")||ti(c)),!0):!1}
;var Z={},Rk=(Z.ad_allowed="adTypesAllowed",Z.yt_abt="adBreakType",Z.ad_cpn="adClientPlaybackNonce",Z.ad_docid="adVideoId",Z.yt_ad_an="adNetworks",Z.ad_at="adType",Z.browse_id="browseId",Z.p="httpProtocol",Z.t="transportProtocol",Z.cpn="clientPlaybackNonce",Z.ccs="creatorInfo.creatorCanaryState",Z.cseg="creatorInfo.creatorSegment",Z.csn="clientScreenNonce",Z.docid="videoId",Z.GetHome_rid="requestIds",Z.GetSearch_rid="requestIds",Z.GetPlayer_rid="requestIds",Z.GetWatchNext_rid="requestIds",Z.GetBrowse_rid=
"requestIds",Z.GetLibrary_rid="requestIds",Z.is_continuation="isContinuation",Z.is_nav="isNavigation",Z.b_p="kabukiInfo.browseParams",Z.is_prefetch="kabukiInfo.isPrefetch",Z.is_secondary_nav="kabukiInfo.isSecondaryNav",Z.prev_browse_id="kabukiInfo.prevBrowseId",Z.query_source="kabukiInfo.querySource",Z.voz_type="kabukiInfo.vozType",Z.yt_lt="loadType",Z.mver="creatorInfo.measurementVersion",Z.yt_ad="isMonetized",Z.nr="webInfo.navigationReason",Z.nrsu="navigationRequestedSameUrl",Z.ncnp="webInfo.nonPreloadedNodeCount",
Z.pnt="performanceNavigationTiming",Z.prt="playbackRequiresTap",Z.plt="playerInfo.playbackType",Z.pis="playerInfo.playerInitializedState",Z.paused="playerInfo.isPausedOnLoad",Z.yt_pt="playerType",Z.fmt="playerInfo.itag",Z.yt_pl="watchInfo.isPlaylist",Z.yt_pre="playerInfo.preloadType",Z.yt_ad_pr="prerollAllowed",Z.pa="previousAction",Z.yt_red="isRedSubscriber",Z.rce="mwebInfo.responseContentEncoding",Z.scrh="screenHeight",Z.scrw="screenWidth",Z.st="serverTimeMs",Z.ssdm="shellStartupDurationMs",Z.aq=
"tvInfo.appQuality",Z.br_trs="tvInfo.bedrockTriggerState",Z.kebqat="kabukiInfo.earlyBrowseRequestInfo.abandonmentType",Z.kebqa="kabukiInfo.earlyBrowseRequestInfo.adopted",Z.label="tvInfo.label",Z.is_mdx="tvInfo.isMdx",Z.preloaded="tvInfo.isPreloaded",Z.upg_player_vis="playerInfo.visibilityState",Z.query="unpluggedInfo.query",Z.upg_chip_ids_string="unpluggedInfo.upgChipIdsString",Z.yt_vst="videoStreamType",Z.vph="viewportHeight",Z.vpw="viewportWidth",Z.yt_vis="isVisible",Z.rcl="mwebInfo.responseContentLength",
Z.GetSettings_rid="requestIds",Z.GetTrending_rid="requestIds",Z.GetMusicSearchSuggestions_rid="requestIds",Z.REQUEST_ID="requestIds",Z),Sk="isContinuation isNavigation kabukiInfo.earlyBrowseRequestInfo.adopted kabukiInfo.isPrefetch kabukiInfo.isSecondaryNav isMonetized navigationRequestedSameUrl performanceNavigationTiming playerInfo.isPausedOnLoad prerollAllowed isRedSubscriber tvInfo.isMdx tvInfo.isPreloaded isVisible watchInfo.isPlaylist playbackRequiresTap".split(" "),Tk={},Uk=(Tk.ccs="CANARY_STATE_",
Tk.mver="MEASUREMENT_VERSION_",Tk.pis="PLAYER_INITIALIZED_STATE_",Tk.yt_pt="LATENCY_PLAYER_",Tk.pa="LATENCY_ACTION_",Tk.yt_vst="VIDEO_STREAM_TYPE_",Tk),Vk="all_vc ap c cver cbrand cmodel cplatform ctheme ei l_an l_mm plid srt yt_fss yt_li vpst vpni2 vpil2 icrc icrt pa GetAccountOverview_rid GetHistory_rid cmt d_vpct d_vpnfi d_vpni nsru pc pfa pfeh pftr pnc prerender psc rc start tcrt tcrc ssr vpr vps yt_abt yt_fn yt_fs yt_pft yt_pre yt_pt yt_pvis ytu_pvis yt_ref yt_sts tds".split(" ");
function Wk(a){return!!R("FORCE_CSI_ON_GEL",!1)||T("csi_on_gel")||!!Hk(a).useGel}
function Xk(a){a=Hk(a);if(!("gel"in a))a.gel={gelTicks:{},gelInfos:{}};else if(a.gel){var b=a.gel;b.gelInfos||(b.gelInfos={});b.gelTicks||(b.gelTicks={})}return a.gel}
;function Yk(a,b,c){if(null!==b)if(Ik(c)[a]=b,Wk(c)){var d=b;b=Xk(c);if(b.gelInfos)b.gelInfos["info_"+a]=!0;else{var e={};b.gelInfos=(e["info_"+a]=!0,e)}if(a.match("_rid")){var f=a.split("_rid")[0];a="REQUEST_ID"}if(a in Rk){b=Rk[a];0<=Ya(Sk,b)&&(d=!!d);a in Uk&&"string"===typeof d&&(d=Uk[a]+d.toUpperCase());a=d;d=b.split(".");for(var g=e={},h=0;h<d.length-1;h++){var k=d[h];g[k]={};g=g[k]}g[d[d.length-1]]="requestIds"===b?[{id:a,endpoint:f}]:a;f=sk({},e)}else 0<=Ya(Vk,a)||ti(new ji("Unknown label logged with GEL CSI",
a)),f=void 0;f&&Wk(c)&&(b=Mk(c||""),sk(b.info,f),b=Xk(c),"gelInfos"in b||(b.gelInfos={}),sk(b.gelInfos,f),c=Jk(c),Pk().info(f,c))}else Mk(c||"").info[a]=b}
function Zk(a,b,c){var d=Gk(c);if(T("use_first_tick")&&$k(a,c))return d[a];if(!b&&"_"!==a[0]){var e=a;Dk.mark&&(0==e.lastIndexOf("mark_",0)||(e="mark_"+e),c&&(e+=" ("+c+")"),Dk.mark(e))}e=b||W();d[a]=e;e=Xk(c);e.gelTicks&&(e.gelTicks["tick_"+a]=!0);c||b||W();if(Wk(c)){Mk(c||"").tick[a]=b||W();e=Jk(c);if("_start"===a){var f=Pk();Qk(f,"baseline_"+e)||li("latencyActionBaselined",{clientActionNonce:e},{timestamp:b})}else Pk().tick(a,e,b);Kk(c);e=!0}else e=!1;if(!e){if(!A("yt.timing."+(c||"")+"pingSent_")&&
(f=R((c||"")+"TIMING_ACTION",void 0),e=Gk(c),A("ytglobal.timing"+(c||"")+"ready_")&&f&&$k("_start")&&Fk(c)))if(Kk(c),c)al(c);else{f=!0;var g=R("TIMING_WAIT",[]);if(g.length)for(var h=0,k=g.length;h<k;++h)if(!(g[h]in e)){f=!1;break}f&&al(c)}Mk(c||"").tick[a]=b||W()}return d[a]}
function $k(a,b){var c=Gk(b);return a in c}
function al(a){if(!Wk(a)){var b=Gk(a),c=Ik(a),d=b._start,e=R("CSI_SERVICE_NAME","youtube"),f={v:2,s:e,action:R((a||"")+"TIMING_ACTION",void 0)},g=c.srt;void 0!==b.srt&&delete c.srt;b.aft=Fk(a);var h=Gk(a),k=h.pbr,l=h.vc;h=h.pbs;k&&l&&h&&k<l&&l<h&&Ik(a).yt_pvis&&"youtube"===e&&(Yk("yt_lt","hot_bg",a),e=b.vc,k=b.pbs,delete b.aft,c.aft=Math.round(k-e));for(var m in c)"_"!==m.charAt(0)&&(f[m]=c[m]);b.ps=W();m={};e=[];for(var p in b)"_"!==p.charAt(0)&&(k=Math.round(b[p]-d),m[p]=k,e.push(p+"."+k));f.rt=
e.join(",");b=!!c.ap;T("debug_csi_data")&&(c=A("yt.timing.csiData"),c||(c=[],Ta("yt.timing.csiData",c)),c.push({page:location.href,time:new Date,args:f}));c="";for(var u in f)f.hasOwnProperty(u)&&(c+="&"+u+"="+f[u]);f="/csi_204?"+c.substring(1);if(window.navigator&&window.navigator.sendBeacon&&b){var q=void 0===q?"":q;wf(f,q)||tf(f,void 0,void 0,void 0,q)}else tf(f);z("yt.timing."+(a||"")+"pingSent_",!0,void 0);Wi(Ak,new yk(m.aft+(Number(g)||0),a))}}
var bl=window;bl.ytcsi&&(bl.ytcsi.info=Yk,bl.ytcsi.tick=Zk);var cl=null,dl=null,el=null,fl={};function gl(a){var b=a.id;a=a.ve_type;var c=Ei++;a=new Fi({veType:a,veCounter:c,elementIndex:void 0,dataElement:void 0,youtubeData:void 0});fl[b]=a;b=Li();c=Ji();b&&c&&fj(b,c,[a])}
function hl(){var a=cl.getVideoData(1);a=a.title?a.title+" - YouTube":"YouTube";document.title!==a&&(document.title=a)}
function il(a){var b=a.csn;a=a.root_ve_type;if(b&&a&&(Oi(b,a),a=Ji()))for(var c in fl){var d=fl[c];d&&fj(b,a,[d])}}
function jl(a){fl[a.id]=new Fi({trackingParams:a.tracking_params})}
function kl(a){var b=Li(),c=fl[a.id];if(b&&c){a=T("use_default_events_client")?void 0:ki;var d="INTERACTION_LOGGING_GESTURE_TYPE_GENERIC_CLICK";c={csn:b,ve:c.getAsJson(),gestureType:d};d={fa:Ni(b),S:b};"UNDEFINED_CSN"==b?gj("visualElementGestured",c,d):a?Sg("visualElementGestured",c,a,d):li("visualElementGestured",c,d)}}
function ll(a){a=a.ids;var b=Li();if(b)for(var c=0;c<a.length;c++){var d=fl[a[c]];if(d){var e=b,f=T("use_default_events_client")?void 0:ki;d={csn:e,ve:d.getAsJson(),eventType:1};var g={fa:Ni(e),S:e};"UNDEFINED_CSN"==e?gj("visualElementShown",d,g):f?Sg("visualElementShown",d,f,g):li("visualElementShown",d,g)}}}
;z("yt.setConfig",Q,void 0);z("yt.config.set",Q,void 0);z("yt.setMsg",yf,void 0);z("yt.msgs.set",yf,void 0);z("yt.logging.errors.log",ui,void 0);
z("writeEmbed",function(){var a=R("PLAYER_CONFIG",void 0);nk(!0);"gvn"==a.args.ps&&(document.body.style.backgroundColor="transparent");var b=document.referrer,c=R("POST_MESSAGE_ORIGIN");window!=window.top&&b&&b!=document.URL&&(a.args.loaderUrl=b);cl=a=(b=R("WEB_PLAYER_CONTEXT_CONFIGS",void 0))&&"WEB_PLAYER_CONTEXT_CONFIG_ID_EMBEDDED_PLAYER"in b?Gj(a,b.WEB_PLAYER_CONTEXT_CONFIG_ID_EMBEDDED_PLAYER,!1):Gj(a);a.addEventListener("onScreenChanged",il);a.addEventListener("onLogClientVeCreated",gl);a.addEventListener("onLogServerVeCreated",
jl);a.addEventListener("onLogVeClicked",kl);a.addEventListener("onLogVesShown",ll);a.addEventListener("onVideoDataChange",hl);b=R("POST_MESSAGE_ID","player");R("ENABLE_JS_API")?el=new Yj(a):R("ENABLE_POST_API")&&"string"===typeof b&&"string"===typeof c&&(dl=new Zj(window.parent,b,c),el=new Tj(a,dl.h));eg()},void 0);
z("yt.www.watch.ads.restrictioncookie.spr",function(a){tf(a+"mac_204?action_fcts=1");return!0},void 0);
var ml=Le(function(){Zk("ol");var a=ok.getInstance(),b=!!((rk("f"+(Math.floor(119/31)+1))||0)&67108864),c=1<window.devicePixelRatio;if(document.body&&Ld(document.body,"exp-invert-logo"))if(c&&!Ld(document.body,"inverted-hdpi")){var d=document.body;if(d.classList)d.classList.add("inverted-hdpi");else if(!Ld(d,"inverted-hdpi")){var e=Jd(d);Kd(d,e+(0<e.length?" inverted-hdpi":"inverted-hdpi"))}}else!c&&Ld(document.body,"inverted-hdpi")&&Md();b!=c&&(b="f"+(Math.floor(119/31)+1),d=rk(b)||0,d=c?d|67108864:
d&-67108865,0==d?delete Y[b]:(c=d.toString(16),Y[b]=c.toString()),a.save())}),nl=Le(function(){var a=cl;
a&&a.sendAbandonmentPing&&a.sendAbandonmentPing();R("PL_ATT")&&yi.dispose();a=0;for(var b=cg.length;a<b;a++)bg(cg[a]);cg.length=0;Vf("//static.doubleclick.net/instream/ad_status.js");dg=!1;Q("DCLKSTAT",0);Wc(el,dl);if(a=cl)a.removeEventListener("onScreenChanged",il),a.removeEventListener("onLogClientVeCreated",gl),a.removeEventListener("onLogServerVeCreated",jl),a.removeEventListener("onLogVeClicked",kl),a.removeEventListener("onLogVesShown",ll),a.removeEventListener("onVideoDataChange",hl),a.destroy();
fl={}});
window.addEventListener?(window.addEventListener("load",ml),window.addEventListener("unload",nl)):window.attachEvent&&(window.attachEvent("onload",ml),window.attachEvent("onunload",nl));Ta("yt.abuse.player.botguardInitialized",A("yt.abuse.player.botguardInitialized")||zi);Ta("yt.abuse.player.invokeBotguard",A("yt.abuse.player.invokeBotguard")||Ai);Ta("yt.abuse.dclkstatus.checkDclkStatus",A("yt.abuse.dclkstatus.checkDclkStatus")||fg);
Ta("yt.player.exports.navigate",A("yt.player.exports.navigate")||Pi);Ta("yt.util.activity.init",A("yt.util.activity.init")||sg);Ta("yt.util.activity.getTimeSinceActive",A("yt.util.activity.getTimeSinceActive")||vg);Ta("yt.util.activity.setTimestamp",A("yt.util.activity.setTimestamp")||tg);}).call(this);
