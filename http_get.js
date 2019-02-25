import http from "k6/http";

const baseURL = "http://minikube";

let delay = "0.6"

function get(func, data) {
  http.get(baseURL + "/" + func + "/" + data);
};

export default function() {
  get("status", "501");
  get("status", "200");
  get("delay", delay);
}
