---
layout: articles
title: IOT Day 2026
permalink: iot_day/2026/
---
<style>
  /* Basic text styles */
  i { color: #555555; font-size: 14px; }
  p { line-height: 120%; margin: 0; }

  /* --- Slideshow frame --- */
  .slideshow-container {
    position: relative;
    width: min(100%, 1100px);
    margin: 0 auto 1rem auto;
    background: #000;            /* no white edges */
    aspect-ratio: 16 / 9;        /* change to 3/2 or 4/3 if you prefer */
    overflow: hidden;
    border-radius: 12px;         /* optional rounded corners */
  }

  /* Fallback for older browsers (optional) */
  .slideshow-container::before {
    content: "";
    float: left;
    padding-top: calc(100% * 9 / 16);
  }
  .slideshow-container::after { content: ""; display: block; clear: both; }

  /* Slides stack on top of each other and fade */
  .slide {
    position: absolute;
    inset: 0;
    opacity: 0;
    transition: opacity 900ms ease-in-out;
    background: #000;
    pointer-events: none;
  }
  .slide.is-active {
    opacity: 1;
    pointer-events: auto;
  }

  /* The image MUST fill the frame */
  .slide > img {
    position: absolute;
    inset: 0;
    width: 100% !important;
    height: 100% !important;
    object-fit: cover;           /* fills the frame (may crop slightly) */
    display: block;
  }
  /* If you want no cropping, swap to contain (will show black bars, not white) */
  /* .slide > img { object-fit: contain; background:#000; } */

  /* Bottom overlay */
  .overlay {
    position: absolute;
    left: 0; right: 0; bottom: 0;
    color: #fff;
    background: linear-gradient(to top, rgba(0,0,0,.55), rgba(0,0,0,0));
    padding: 10px 12px;
  }

  /* Controls */
  .slideshow-controls {
    display: flex;
    justify-content: center;
    gap: .75rem;
    margin: .5rem 0 1rem;
  }
  .control-btn {
    cursor: pointer;
    border: 1px solid #ddd;
    padding: .4rem .8rem;
    border-radius: .5rem;
    background: #fff;
    font-size: 14px;
  }
  .control-btn:hover { background: #f6f6f6; }

  /* Pause hint on hover */
  .slideshow-container:hover::after {
    content: "⏸︎";
    position: absolute;
    right: .5rem;
    bottom: .5rem;
    font-size: 20px;
    color: rgba(255,255,255,.9);
    text-shadow: 0 1px 2px rgba(0,0,0,.6);
    pointer-events: none;
  }

  /* Respect reduced motion */
  @media (prefers-reduced-motion: reduce) { .slide { transition: none; } }

  /* Optionally use a taller frame on small screens */
  @media (max-width: 640px) { .slideshow-container { aspect-ratio: 4 / 3; } }
</style>

<div class="slideshow-container" id="iot-slideshow" aria-label="IoT Day 2025 photo slideshow">
  {% for i in (1..29) %}
  <div class="slide{% if forloop.first %} is-active{% endif %}" data-index="{{ forloop.index0 }}">
    <img
      src="/assets/images/Photos_IoT_Demo_Day/{{ i }}.jpg"
      alt="IoT Day 2025 photo {{ i }}"
      loading="{% if forloop.index0 > 2 %}lazy{% else %}eager{% endif %}"
    />
    <!-- <div class="overlay">
      <p><a href="https://ishjain.github.io/" style="color:#fff; text-decoration:underline;">Ish Kumar Jain</a></p>
      <p><i style="color:#e5e5e5">Course Instructor, Assistant Professor ECSE</i></p>
    </div> -->
  </div>
  {% endfor %}
</div>

<div class="slideshow-controls">
  <button class="control-btn" id="prev-btn" aria-label="Previous slide">‹ Prev</button>
  <button class="control-btn" id="playpause-btn" aria-label="Pause slideshow">Pause</button>
  <button class="control-btn" id="next-btn" aria-label="Next slide">Next ›</button>
</div>

<script>
(function () {
  const container = document.getElementById('iot-slideshow');
  const slides = Array.from(container.querySelectorAll('.slide'));
  const prevBtn = document.getElementById('prev-btn');
  const nextBtn = document.getElementById('next-btn');
  const playPauseBtn = document.getElementById('playpause-btn');

  let idx = 0;
  let playing = true;
  let timer = null;
  const intervalMs = 3500;

  function setActive(newIdx) {
    slides[idx].classList.remove('is-active');
    idx = (newIdx + slides.length) % slides.length;
    slides[idx].classList.add('is-active');
  }
  function next() { setActive(idx + 1); }
  function prev() { setActive(idx - 1); }

  function play() {
    if (timer) return;
    playing = true;
    playPauseBtn.textContent = 'Pause';
    timer = setInterval(next, intervalMs);
  }
  function pause() {
    playing = false;
    playPauseBtn.textContent = 'Play';
    clearInterval(timer); timer = null;
  }
  function toggle() { playing ? pause() : play(); }

  // Init
  play();

  // Pause on hover
  container.addEventListener('mouseenter', pause);
  container.addEventListener('mouseleave', () => { if (!playing) play(); });

  // Controls
  prevBtn.addEventListener('click', () => { pause(); prev(); });
  nextBtn.addEventListener('click', () => { pause(); next(); });
  playPauseBtn.addEventListener('click', toggle);

  // Keyboard
  container.tabIndex = 0;
  container.addEventListener('keydown', (e) => {
    if (e.key === 'ArrowRight') { pause(); next(); }
    if (e.key === 'ArrowLeft')  { pause(); prev(); }
    if (e.key === ' ')          { e.preventDefault(); toggle(); }
  });
})();
</script>

---

## 🏆 Best Demo – Graduate Category
**Luggage Tracking & Anti-Tampering Device**  
*By: Joseph Pizzimenti, Alek Krupka, and Julian Edelman*

This project addressed the global issue of lost and mishandled luggage by developing an open-source AirTag-like system using Raspberry Pis with sensors. The system employs an Ad Hoc MQTT network and alerts users if their luggage is tampered with or misplaced at airports. The team's solution excelled in its technical complexity, real-world applicability, and polished presentation.

---

## 🏆 Best Demo – Undergraduate Category
**Lab Room Management System**  
*By: Mu Li and Yunjie Wang*

Aiming to improve safety and efficiency in lab environments, this system integrates facial recognition for access control, automates equipment settings, and supports remote permission management. Notably, the project leverages a large language model to convert natural language commands into executable actions, creating a user-friendly, intelligent interface for lab resource management. The demo stood out for its innovation, automation, and forward-thinking design.
