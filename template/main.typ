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
  title: "百宝箱数据库模块设计与实现",
  duty: "整个模块的技术设计与实现以及稳定性保障",
)[
  - 实现了真实物理表和 OB JSON 虚拟表两种存储方式，支持多种数据类型。
  - 通过 SQL 改写技术实现用户维度的表隔离。
  - 支持模型通过 Functoncall 方式调用数据表工具；以及在工作流中用户编写自定义SQL执行。
  - 落地大模型生成 text2sql 技术，并进行 text2sql 的评测和效果演进。 
]

#resume-project(
  title: "百宝箱数据库模块设计与实现",
  duty: "整个模块的技术设计与实现以及稳定性保障",
)[
  - 把开源项目 mem0 集成到百宝箱中，作为长期记忆模块的记忆生成的主要链路。
  - 基于 Raft 协议实现了满足线性一致性的 KV 数据库。
  - 采用 Multi-Raft 架构，支持数据分片，分片迁移，分片垃圾回收和分片迁移时读写优化。
  - 对分布式系统的设计考量有了更多的认识。
]

#resume-project(
  title: "ZYX 平台下的某某共识算法设计与实现",
  duty: "共识算法设计与实现",
  start: "2021.11",
  end: "2022.07",
)[
  - 根据 ZYX (Rust 实现的开源区块链框架) 的架构，*修改并实现某某某共识算法*。
  - 针对系统进行性能测试，分析瓶颈，并优化吞吐量；TPS 由 1K 达到 6K。
  - 此项目为实验室研究项目的一部分。
]

#resume-project(
  title: "BIThesis 北京理工大学毕设模板集合(开源项目)",
  duty: "主要维护者（开源项目）",
  start: "2020.04",
)[
  - 根据相关排版要求，*利用 LaTeX3 (expl3) 设计了同时符合各个学位要求且支持灵活配置的宏包及多套模板*。
  - 需求开发和问题修复采用标准工作流，引入了回归测试与基于 GitHub Actions 的测试与持续集成。
  - 负责了什么什么；完成了怎样的结果。
]

#resume-section("其他信息")
- 语言能力：英语（雅思6.5/CET6 500+）、法语（精通）
- 校园经历：担任China Club主席，组织中国文化传播活动
- 技术博客：link("https://example.com", "个人技术博客")
