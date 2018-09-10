declare var jquery: any;
declare var $: any;

export function htmlEncode(value) {
  return $("<div/>")
    .text(value)
    .html();
}

export function htmlDecode(value) {
  return $("<div/>")
    .html(value)
    .html();
}
