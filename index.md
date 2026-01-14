---
layout: article
aside:
  news: true
title: Internetworking of Things (ECSE-4660/ECSE-6660)
carousels:
  # - images:
  #   - image: /assets/images/picpic/graduation_2023.jpg
  #   - image: /assets/images/picpic/birch_2022.jpg
  #   - image: /assets/images/picpic/roshan_graduation.jpg
  #   - image: /assets/images/picpic/diwali.jpg
  #   - image: /assets/images/picpic/frisbee.jpg
  #   - image: /assets/images/picpic/manibday.jpg
# article_header:
#   type: overlay
#   theme: dark
#   background_color: '#203028'
#   background_image:
#     src: /assets/images/atkinson.jpeg
#     gradient: 'linear-gradient(135deg, rgba(34, 139, 87 , .4), rgba(139, 34, 139, .4))'
---
<style>
  /* Inline CSS to change the title font size */
  h1 {
    font-size: 34px; /* You can adjust this value to suit your design needs */
  }
</style>

-- **CRN:** 32409 / 32410  
**Credits:** 3  
**Meeting Days/Time:** MR, 12:30–1:50 PM  
**Lecture Room:** JONSSON 4104  
**Laboratory:** JEC 5312  
**Laboratory Access:** 7:00 AM – 10:00 PM (access provided to registered students) -->



## Websites / Platforms
- **Piazza:** for accessing lecture material and discussions
- **Gradescope:** for submitting assignments
- **LMS:** for quizzes and homeworks

## Prerequisites
Basic understanding of computer organization, operating systems, and networks. Ability to write programs in high-level languages (e.g., Python or C/C++).

## Instructors
- **Professor:** Ish Jain  
  *Office Hours:* Mondays and Thursdays after class or by appointment  
  *Email:* jaini@rpi.edu

-- - **Teaching Assistant**  
  - Chibuikem Ezemaduka — ezemac@rpi.edu  
*Office/Lab Hours:* Mon–Fri, 4–5 PM -->


## Course Description
The course provides an in-depth study of the technologies and protocols involved in building the Internet-of-Things (IoT), with specific focus on networking at the edge of the Internet. This includes understanding of wireless communication and link layer technologies, multi-access and scheduling mechanisms, mobility models, routing in disconnected networks, energy-efficient edge networking, loss-tolerant transport protocols, and their applications to emerging areas such as vehicular networks, RFID systems and smart buildings. The course also discussed IoT Security and data/content distribution, aggregation, and compression. This course has a strong emphasis on hands-on experience utilizing Raspberry Pi’s, Arduino’s, and NI software radio boards, and a significant part of the course assessment will be based on a final project focused on building a wireless-based application such as indoor localization for IoT devices. Students are encouraged to suggest their own individual projects.

## Topics (Tentative)
- Review of networking architectures and standards  
- Review of wireless PHY layer technologies  
- Wireless access technologies for IoT: WiFi, LTE, NB-IoT
- Low-power IoT Wireless Technologies: ZigBee, Z-Wave, BLE, LoRA
- Low-power Backscatter Technologies: RFID 
- Routing and network layer protocols for IoT: RPL and 6LoWPAN  
- Low-overhead IoT transport: CoAP and MQTT  
- Network management for IoT: LWM2M and NETCONF  
- IoT mobility models and mobility handling protocols  
- IoT security  
- Energy-efficient IoT networking  
- Sensor data aggregation and analytics  
- Applications to vehicular networking, environmental monitoring, healthcare, smart buildings, etc.

## Course Texts
No required textbooks. This is an advanced-level course, and much of the material may not be available in textbook form. Reference material will be provided for each lecture.

**Supplemental (not required):**
- Olivier Hersent, David Boswarthick, and Omar Elloumi, *The Internet of Things: Key Applications and Protocols*, 2nd ed., Wiley, 2012.  
- Holger Karl and Andreas Willig, *Protocols and Architectures for Wireless Sensor Networks*, 1st ed., Wiley, 2007.  
- Vijay Garg, *Wireless Communications and Networking*, Morgan Kauffman, 2007.  
- Savo Glisic, *Advanced Wireless Communications and Internet: Future Evolving Technologies*, 3rd ed., 2011.  
- Jack L. Burbank, Julia Andrusenko, Jared S. Everett, and William T. M. Kasch, *Wireless Networking: Understanding Internetworking Challenges*, Wiley, 2013.

## Student Learning Outcomes
The table below presents the Student Learning Outcomes (SLOs) for both ECSE-4660 and ECSE-6660 students. The left column is for ECSE 4660 students, while the right column for ECSE-6660 students expands each with greater depth, advanced applications, and evaluation criteria. 
| ECSE-4660                                        | ECSE-6660 |
| ------------------------------------------------ | ------:|
| 1. Understand, design, and evaluate wireless PHY layer technologies for IoT such as Modulation, LoRa, RFID, etc. | 1. Analyze and compare advanced wireless PHY layer technologies (e.g., LoRa, NB-IoT, UWB), including performance trade-offs, spectral efficiency, and deployment considerations in diverse IoT environments.|
|2. Understand key wireless access technologies such as Aloha and CSMA used in the Internet-ofThings.| 2. Critically evaluate and simulate advanced MAC protocols (e.g., TDMA, FDMA, SDMA) for IoT, considering scalability, latency, and energy efficiency in dense and heterogeneous networks. |
|3. Understand key routing algorithms and protocols used in the Internet-of-Things.| 3. Design and assess routing strategies (e.g., RPL, geographic routing, opportunistic routing) under constraints such as mobility, energy, and intermittent connectivity in large-scale IoT deployments. |
|4. Understand low-overhead transport protocols that are suited for IoT applications. | 4. Evaluate and optimize lightweight transport protocols (e.g., CoAP, MQTT, QUIC) for reliability, congestion control, and interoperability in constrained IoT networks.|
|5. Understand mobility models and mobility handling protocols for the Internet-of-Things.| 5. Model and simulate mobility patterns in IoT (e.g., vehicular, drone-based, or mobile health networks), and assess the impact on routing, latency, and data consistency. |
|6. Understand security mechanisms used for IoT communication over wireless. | 6. Analyze and implement advanced security frameworks for IoT, including lightweight cryptographic protocols, secure bootstrapping, and intrusion detection in resource-constrained environments. |
|7. Understand data compression and aggregation methods in sensor IoT networks. | 7. Design and evaluate adaptive data compression, in-network processing, and edge analytics techniques for scalable and energy-efficient IoT data management. |
|8. Understand integrated IoT solutions critical in emerging domains such as vehicular networks, RFID systems, and smart buildings. | 8. Architect and critically assess end-to-end IoT systems in complex domains (e.g., smart cities, industrial IoT, cyber-physical systems), focusing on interoperability, scalability, and real-time performance. |

Note that in addition, students at 6000 level will implement practical security considerations in IoT networks through advanced labs and individual projects. 


<!-- Students who finish the course satisfactorily will be able to understand, design, and evaluate:
1. Wireless PHY layer technologies for IoT (e.g., modulation, LoRa, RFID).  
2. Key wireless access technologies such as Aloha and CSMA used in IoT.  
3. Key routing algorithms and protocols used in IoT.  
4. Low-overhead transport protocols suited for IoT applications.  
5. Mobility models and mobility handling protocols for IoT.  
6. Security mechanisms for IoT communication over wireless.  
7. Data compression and aggregation methods in sensor IoT networks.  
8. Integrated IoT solutions in domains such as vehicular networks, RFID systems, and smart buildings. 

*Additional for ECSE-6660:* practical security considerations via advanced labs and individual projects.-->



## Assessment

| Component                                        | Weight |
| ------------------------------------------------ | ------:|
| Class Participation                              |     5% |
| Per-class Quizzes                                |     5% |
| Homework Assignments                             |    20% |
| Laboratory Assignments                           |    30% |
| Final Project (implementation & demonstration)   |    40% |

The grade distribution above is the same for both 4660 and 6660 students.
*For ECSE-6660 (graduate level):* some advanced lab/homework questions and a more advanced project are required.  
*Projects:* groups of two students are typical. 4000- and 6000-level students are discouraged from forming a single group unless approved; in such cases the 6000-level student is expected to complete advanced features independently.




## Course Topics & Schedule (Tentative)
The schedule and topics are tentative and may change depending on class progress.

| Lecture #    | Topic |
|----------------|-------|
| 1,2            | Intro to network architectures & standards |
| 3,4,5,6        | PHY layer technology review: channel, LoRA, backscatter, OFDM foundation  |
| 7,8,9,10       | Wireless access technologies for IoT: WiFi, BLE, LTE, Zigbee  |
| 11,12,13, 14,15| Routing and network layer protocols for IoT: DSR, AODV, IP addressing, DHCP, ARP, IPv6, NAT, Routing, ICMP, RPL. 6LowPAN  |
| 16,17          | Low-overhead IoT transport: UDP, TCP, Socket Programming  |
| 18,19          | Applications for IoT: HTTP, MQTT, CoAP |
| 20,21,22, 23   | Secure communication of IoT devices over wireless; Secure protocols, firewall |
| 24,25          | Emerging applications   |
| 26,27,28       | Final project presentations  |




## Other Course Policies

### Final Project
The project provides an opportunity to immerse yourself in IoT design and application in your area of interest. Projects typically involve up to two students (individual projects are allowed). Groups of three or more require strong justification. Submit a final report at the end of the semester along with a presentation and recorded demo. Upload any software with documentation sufficient for result reproduction. Further details will be shared during the course.

**Important:** Previously developed products—either from another class or third parties—cannot be used for project credit. Any open-source or third-party software must be explicitly acknowledged and does not count toward credit. Failure to acknowledge such software will be treated as plagiarism per the academic dishonesty policy.

### Quizzes, Homework, and Lab Assignments
- Per-class quizzes (Lecture 2 onward) will be assigned on **LMS** and due the same day at 11:59 PM.  
- Homework and lab assignments will be on **Piazza**; submit solutions on **Gradescope** by the deadline. Assignments are posted roughly weekly, with homeworks and labs in alternating weeks.  
- **Late submissions are not accepted, unless approved by the instructor.** There is a 20% penalty until late submission deadline on Gradescope (typically 2 days later). First two penalties will be waived. LMS grading is automatic and doesn’t allow late submissions. 
- All assignments must be completed independently. Conceptual discussion with classmates/instructor is allowed (e.g. through Piazza), but sharing detailed solutions or final answers is not. Do not copy solutions from any source. Do not knowingly provide your work to be copied.

### Attendance / Participation
We encourage a climate of inquiry with active student engagement. While synchronous lecture attendance is not mandatory, attending/watching lectures supports strong performance and an active learning environment.

### Submission Policy and Absences
- Job interviews are not approved absences unless pre-approved with documentation from the Dean of Students.  
- Upload all homework and lab assignments on **Gradescope** before the deadline. Late submissions are automatically marked and not accepted. Without a valid excuse, a **zero** is assigned.  
- The final project report and deliverables must be submitted by the final class. With a valid excuse, an **Incomplete** may be assigned; otherwise, a **zero** is given.

### Academic Integrity
Student–teacher relationships are built on trust. The Rensselaer *Handbook of Student Rights and Responsibilities* defines various forms of academic dishonesty—please review it. All graded work (homework, lab work, or final project deliverables) must represent your own (or your team’s) independently completed work. If help is received, include a note indicating the nature of the collaboration and the names/identities of collaborators.

**Violation Consequences:** Any incident of academic dishonesty on an exam/assignment will result in **at least** a score of 0 for the first incident, and a course grade of **F** for repeated violations—or **F** even on a first violation depending on severity. An **F** due to violations will be reported to the Dean of Students and may become a permanent record.

<!-- #### Mission Statement
<!-- 
The mission of the overall group is to solve real-world problems by first identifying the right problems to solve, then creating a theoretical model and theoretical breakthrough and practical realization of those solutions, and iterate! --> 

<!-- {% include carousel.html height="50" unit="%" duration="7" number="1" %}
#### Research Overview
Our research group is at the forefront of developing innovative sensing, communication, and networking technologies to transform robotics, autonomous systems, and everyday devices. We tackle the full spectrum of challenges, from building an initial system prototype to understanding real problems, then developing a theoretical model, coming up with theoretical breakthroughs to practical prototype development for breakthroughs, and finally, deployment in the real world. -->



<!-- #### Key Research Areas 

<div><a href="https://wcsng.ucsd.edu/wireless-sensing.html"><img src="/assets/images/main_page/Slide2.JPG"  width="100%"/></a></div><hr>
<div><a href="https://wcsng.ucsd.edu/communication.html"><img src="/assets/images/main_page/Slide1.JPG"  width="100%"/></a></div><hr>
<div><a href="https://wcsng.ucsd.edu/backscatter.html"><img src="/assets/images/main_page/Slide3.JPG"  width="100%"/></a></div><hr>
<div><a href="https://wcsng.ucsd.edu/spectrum_sensing.html"><img src="/assets/images/main_page/Slide4.JPG"  width="100%"/></a></div><hr>
<div><a href="https://wcsng.ucsd.edu/vehicular.html"><img src="/assets/images/main_page/Slide5.JPG"  width="100%"/></a></div><hr>
<div><a href="https://wcsng.ucsd.edu/privacy.html"><img src="/assets/images/main_page/Slide6.JPG"  width="100%"/></a></div><hr> -->



<!--
### Wireless Sensing
We create cutting-edge sensing solutions to enhance the capabilities of robots and autonomous devices, including flexible robots and privacy-preserving localization techniques. We are pioneering next-generation localization systems for Industrial IoT 4.0, enabling safer and more efficient smart manufacturing, warehouse management, and private 5G networks. We have developed autonomous robots and deep-learning powered localization systems that enable easy-to-deploy location services, even in complex environments.

### Towards xG
We are overcoming the limitations of traditional mmWave connectivity to enable reliable, high-throughput communication for indoor and outdoor scenarios. We create new Massive MIMO architecture that is sustainable. We develop real-time RAN Intelligent Controller and AI algorithms for network optimization.



### Communication and Power Delivery for IoT Devices
We are developing ultra-low power WiFi communication and wireless power transfer technologies to dramatically improve the energy efficiency and connectivity of IoT devices. We build a low-power, long-range, and reliable backscatter systems. We improve the range of WiFi with smart surface deployment. We developed a universal sensing platform using wireless, batteryless RFID and flexible sensors.

### Spectrum Sensing
Sweep-Sensing 5 GHz in a milli-second: Sensing the entire spectrum with high-resolution and dynamic range in time, frequency, and space (wide-area) in cost efficiency is a need of the day and near-impossible. Such sensing would enable highly efficient communication, securing our communications and preserving our privacy.
Shipping the sensed spectrum data: Accurate spectrum sensing with just a single sensor generates 800 Mbps, which cannot be shipped in real-time. Enabling >1000x compression and shipping only necessary information.

### Autonomous Vehicles
We developed perception in bad-weather using Radar-based sensors and Enabled Cameras to perceive the depth in a sensor fusion approach.

### Security and Privacy
We expose the vulnerability of RF communication and sensing systems (e.g., spoofing automotive radars, jamming communication radios ) and prepare appropriate counter-measures to protect communication and sensing systems.

-->


<!-- #### Our Approach
We embrace a holistic approach to research, combining fundamental theoretical exploration with practical implementation. We design and build prototypes to test and refine our concepts, ensuring our solutions are not only innovative but also practical and deployable in the real world. -->


