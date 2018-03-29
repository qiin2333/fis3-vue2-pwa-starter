/**
 * @file config
 * @author zhouqing02
 */

export const API_ROOT = '';

export const STORE_EXPIRES = 3 * 24 * 60 * 60 * 1000;

export const STATUS_CODE_MAP = {
    1000: "成功",
    9999: "失败",
    1001: "网络异常",
    1002: "系统繁忙",
    1003: "暂无数据",
    1004: "参数非法",
    1005: "图片格式错误",
    1006: "上传的文件太大",
    1007: "用户未注册",
    1008: "验证码错误",
    1009: "验证码过期",
    1010: "验证码发送失败"
}
