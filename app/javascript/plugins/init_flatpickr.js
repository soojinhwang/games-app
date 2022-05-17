import flatpickr from "flatpickr";

const initFlatpickr = () => {
  flatpickr(".datepicker", {dateFormat: "d-M-y"});
};

export { initFlatpickr };
