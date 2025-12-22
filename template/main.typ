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
jk
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
- *框架*：Go-zero/Kitex/Gin
- *AI*：LLM Agent构建/RAG技术应用。MCP 协议 与 A2A 协议
#resume-section[工作经历]
#resume-work(
  company: "蚂蚁集团",
  duty: "PAAS平台工程师",
  start: "2022-12",
  end: "2024-01"
)[
- 负责支付宝小程序云托管平台公网测试域名和云调用开发，以及自研k8s workload监控与稳定性保障
]
#resume-work(
  company: "蚂蚁集团",
  duty: "LLM agent应用开发",
  start: "2024-01",
  end: "2025-11"
)[
- 数据库模块和长期记忆模块设计和研发， Agent 沙箱系统的设计和构建。
]


#resume-section[项目经历]

#resume-project(
  title: "多agent协同系统，类manus通用智能体",
  duty: "agent sandbox 的设计和实现",
  start: "2025-05",
  end: "2025-11"
)[
  - 用户电脑 computer 的分配和运维以及电脑上 mcp servers 的部署运维。 使用 fastmcp 构建用户电脑 mcp server proxy。
  - 用户 computers 上 mcp servers 协议升级。 SSE -> streamable http
  - 会话维度用户电脑的分配和回收机制设计和实现。
]


#resume-project(
  title: "百宝箱数据库模块设计与实现",
  duty: "整个模块的技术设计与实现以及稳定性保障",
  start: "2024-08",
  end: "2025-11"
)[
  - 实现了真实物理表和 OB JSON 虚拟表两种存储方式，支持多种数据类型。
  - 通过 SQL 改写技术实现用户维度的表隔离。
  - 支持模型通过 Functoncall 方式调用数据表工具；以及在工作流中用户编写自定义SQL执行。
  - 落地大模型生成 text2sql 技术，并进行 text2sql 的评测和效果演进。 
]

#resume-project(
  title: "百宝箱长期记忆模块设计与实现",
  duty: "整个模块的技术设计与实现以及稳定性保障",
  start: "2024-12",
  end: "2025-11"
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
#resume-section[开源贡献]

#resume-project(
  title: "mem0",
  duty: "Universal memory layer for AI Agents  AI智能体的通用记忆层",
)[
  - pr: https://github.com/mem0ai/mem0/pull/2201  
  - 记忆整理过程中对检索后的忆进行去重

]


#resume-project(
  title: "openkruise",
  duty: "Automated management of large-scale applications on Kubernetes",
)[
  - pr: https://github.com/openkruise/kruise/pull/1324
  - 修复了 cloneset  在  updatestrategy paused == true时，暂停升级
  - pr: https://github.com/openkruise/kruise/pull/1457
  - 修复一个 e2e 单元测试
]

#resume-project(
  title: "knative/serving",
  duty: "Kubernetes-based, scale-to-zero, request-driven compute",
)[
  - pr: https://github.com/knative/serving/pull/14565
  - wait.PollUntilContextTimeout 替换 wait.PollImmediate（deprecated）
  - pr: https://github.com/openkruise/kruise/pull/1457
  - 在性能测试中增加 SLA 标准
]


#resume-project(
  title: "knative/eventing",
  duty: "Event-driven application platform for Kubernetes",
)[
  - https://github.com/knative/eventing/pull/7338
  - Support auto generation of Subscriptions identity service account and expose in AuthStatus
  - https://github.com/knative/eventing/pull/7417
  - Refactor the AuthStatus Logic in Eventing OIDC Feature Track
  - https://github.com/knative/eventing/pull/7499
  - fix mt-broker-ingress watch Broker
]

#resume-section("其他信息")
- 语言能力：英语（雅思6.5/CET6 500+）、法语（精通）
// - 校园经历：担任China Club主席，组织中国文化传播活动
- 技术博客：善于技术写作，持续关注互联网技术发展。 个人技术博客： #link("https://xpjblog.netlify.app/")[https://xpjblog.netlify.app/]
