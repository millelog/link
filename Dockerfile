# Kutt with the Cascade Online theme baked in (custom/ is Kutt's supported override folder).
FROM kutt/kutt:v3.2.6
COPY custom /kutt/custom
# ponytail: stats.js hardcodes its chart colours; swap purple for brand teal and light ticks for the dark ground
RUN sed -i 's/179, 157, 219/42, 194, 198/g; s/"rgba(255, 255, 255, 0.95)"/"rgba(48, 48, 48, 0.97)"/g; s/titleColor: "#333"/titleColor: "#fff"/g' static/scripts/stats.js \
 && sed -i '1i if (window.Chart) { Chart.defaults.color = "#d1d5db"; Chart.defaults.borderColor = "rgba(255,255,255,0.09)"; Chart.defaults.font.family = "Poppins, sans-serif"; }' static/scripts/stats.js \
 && sed -i 's|Cut your links <span>shorter</span>.|Shorten a link|' server/views/partials/shortener.hbs
