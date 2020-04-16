const data = [
  {
    content: "在github上公布源码",
    timestamp: "2018-03-07",
  },
  {
    content: "上架DCloud插件市场",
    timestamp: "2018-03-09",
  },
  {
    content: "大幅优化手机端展示效果",
    timestamp: "2018-03-20",
  },
  {
    content: "增加更换主题功能",
    timestamp: "2018-04-10",
  },
  {
    content: "大幅精简代码",
    timestamp: "2018-04-14",
  },
  {
    content: "修复群友反馈的bug",
    timestamp: "2018-04-16",
  },
];

export default [
  {
    url: "/changeLog/getList",
    type: "post",
    response: (config) => {
      return {
        code: 200,
        msg: "success",
        totalCount: 999,
        data: data,
      };
    },
  },
];
