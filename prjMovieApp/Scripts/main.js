! function (t) {
	"use strict";

	function e(t, e, i, n, r) {
		var o = Array.prototype.forEach,
			f = t instanceof Node ? t : document.querySelector(t);
		if (!f) return !1;
		var s = f.querySelectorAll(e);
		if (0 === s.length) return !1;
		i = "number" == typeof i && isFinite(i) && Math.floor(i) === i ? i : 6, f.style.width = "";
		var u = f.getBoundingClientRect().width,
			d = s[0].getBoundingClientRect().width + i,
			l = Math.max(Math.floor((u - i) / d), 1),
			a = 0;
		u = d * l + i + "px", f.style.width = u, f.style.position = "relative";
		for (var c = [], m = [], p = 0; l > p; p++) m.push(p * d + i), c.push(i);
		o.call(s, function (t) {
			var e = c.slice(0).sort(function (t, e) {
				return t - e
			}).shift();
			e = c.indexOf(e);
			var r = m[e],
				f = c[e],
				s = ["webkitTransform", "MozTransform", "msTransform", "OTransform", "transform"];
			return t.style.position = "absolute", n || o.call(s, function (e) {
				t.style[e] = "translate3D(" + r + "px," + f + "px,0)"
			}), c[e] += t.getBoundingClientRect().height + i, a += 1, n ? n(t, r, f, a) : void 0
		});
		var h = c.slice(0).sort(function (t, e) {
			return t - e
		}).pop();
		f.style.height = h + "px", "function" == typeof r && r(s)
	}
	"function" == typeof define && define.amd ? define(function () {
		return e
	}) : "undefined" != typeof module && module.exports ? module.exports = e : t.minigrid = e
}(this),
	function () {
		minigrid(".grid", ".grid-item"), window.addEventListener("resize", function () {
			minigrid(".grid", ".grid-item")
		})
	}();


const loginForm = document.querySelector("form.login");

const signupForm = document.querySelector("form.signup");

const loginBtn = document.querySelector("label.login");

const signupBtn = document.querySelector("label.signup");

const signupLink = document.querySelector(".signup-link a");

const loginText = document.querySelector(".title-text .login");

const signupText = document.querySelector(".title-text .signup");

signupBtn.onclick = () => {
	loginForm.style.marginLeft = "-50%";
	loginText.style.marginLeft = "-50%";
};

loginBtn.onclick = () => {
	loginForm.style.marginLeft = "0%";
	loginText.style.marginLeft = "0%";
};

signupLink.onclick = () => {
	signupBtn.click();
};
