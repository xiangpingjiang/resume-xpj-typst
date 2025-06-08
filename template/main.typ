#import "@preview/resume-ng:1.0.0": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "Resume-ng",
  author: (name: "向平江"),
  contacts: 
    (
      "+86 18991699014",
      link("mailto:825717414@qq.com", "825717414@qq.com"),
      link("https://xpjblog.netlify.app/", "xpjblog.netlify.app"),
      link("https://github.com/xiangpingjiang", "github.com/xiangpingjiang"),
      "中国 杭州",

    )
)

#resume-section("教育经历")
#resume-education(
  university: "IMT Atlantique（布列塔尼国立高等电信）",
  degree: "工程型硕士研究生",
  school: "计算机科学",
  start: "2019-09",
  end: "2022-09"
)[
*法国前三工程师学校*，主要研究研究云计算、虚拟化、分布式系统。获国家留学基金委CSC奖学金（2018-2019）。 期间在法国电信和 Synapse Medicine 进行了为期一年多的实习。
]

#resume-education(
  university: "西安电子科技大学", 
   degree: "工学学士",
  school: "通信工程",
  start: "2015-09",
  end: "2019-06"
)[
*课程平均成绩88/100（专业前15%）*
]

#resume-section("技术能力")
- *编程语言*：Golang/Java/Python
- *云原生*：Docker/Kubernetes/Operator开发
- *AI*：LLM Agent构建/RAG技术应用。MCP 协议 与 A2A 协议
#resume-section[工作经历]
#resume-work(
  company: "蚂蚁集团",
  duty: "PAAS平台工程师",
  start: "2022-12",
  end: "2023-01"
)[
- 负责支付宝小程序云托管平台公网测试域名和云调用开发，以及自研k8s workload监控与稳定性保障
]
#resume-work(
  company: "蚂蚁集团",
  duty: "百宝箱后端开发",
  start: "2023-01",
  end: "present"
)[
- 数据库模块和长期记忆模块设计和研发
]


#resume-section[项目经历]

#resume-project(
  title: "多agent协同系统，通用只智能体",
  duty: "不同文件类型的上传和消费",
  start: "2025-05",
  end: "present"
)[
  - 不同文件类型的上传和消费，大文件的总结和信息检索。
  - 图片理解和OCR mcp 工具的构建。
]


#resume-project(
  title: "百宝箱数据库模块设计与实现",
  duty: "整个模块的技术设计与实现以及稳定性保障",
  start: "2024-08",
  end: "present"
)[
  - 实现了真实物理表和 OB JSON 虚拟表两种存储方式，支持多种数据类型。
  - 通过 SQL 改写技术实现用户维度的表隔离。
  - 支持模型通过 Functoncall 方式调用数据表工具；以及在工作流中用户编写自定义SQL执行。
  - 落地大模型生成 text2sql 技术，并进行 text2sql 的评测和效果演进。 
]

#resume-project(
  title: "百宝箱数据库模块设计与实现",
  duty: "整个模块的技术设计与实现以及稳定性保障",
  start: "2024-12",
  end: "present"
)[
  - 把开源项目 mem0 集成到百宝箱中，作为长期记忆模块的记忆生成的主要链路。
  - 采用消息队列和 faas 系统实现了长期记忆的异步生成和存储。
  - 设计了长期记忆在对话型应用和在工作流里的向量检索匹配的使用方式。
]



#resume-project(
  title: "支付宝小程序云托管域名管理模块的设计和实现",
  duty: "技术设计与实现以及稳定性保障",
  start: "2023-08",
  end: "2024-01"

)[
  - 流量管理的三层模型应用落地到小程序云的场景中。
  - 设计了自定义域名和测试域名的生命周期管理和域名的自动化申请流程。
]

#resume-project(
  title: "支付宝小程序云托管故障机迁移设计和实现",
  duty: "技术设计与实现以及稳定性保障",
  start: "2022-12",
  end: "2023-03"

)[
  - 针对有状态服务和无状态服务设计不同的迁移方案，并在controller 中实现。
]

#resume-project(
  title: "支付宝小程序云托管数据回流controller",
  duty: "技术设计与实现以及稳定性保障",
  start: "2023-02",
  end: "2023-05"

)[
  - 针对服务下pod数量和pod状态，设计并实现了数据回流的controller。
]


#resume-section("其他信息")
- 语言能力：英语（雅思6.5/CET6 500+）、法语（精通）
- 校园经历：担任China Club主席，组织中国文化传播活动
- 技术博客：善于技术写作，持续关注互联网技术发展。 个人技术博客： #link("https://xpjblog.netlify.app/")[https://xpjblog.netlify.app/]
