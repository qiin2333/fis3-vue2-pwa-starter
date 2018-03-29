export const to10k = (num, str) => {
    num = +num;
    if (num < 100 && str) {
        return str;
    } else {
        return (num / 10000 | 0).toFixed(2) + '万';
    }
}

export const trim = (str = '') => {
    return str.replace(/(^\s*)|(\s*$)/g, "");
}

export const currency = (p, s = '¥ ', dec = 0) => {
    if (Math.abs(p) !== 0 && !Math.abs(p)) return s+'0';
    p = (p+'').split('.');
    let inte = p[0], deci = p[1];
    return s + inte.replace(/(?!^)(?=(\d{3})+$)/g, ',') + (dec > 0 ? ('.' + deci) : '');
}
