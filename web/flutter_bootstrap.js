{{flutter_js}}
{{flutter_build_config}}

const searchParams = new URLSearchParams(window.location.search);
const renderer = searchParams.get("renderer");
const useCanvasKitIfEmptyRenderer = true;
const userConfig = renderer
  ? { renderer: renderer }
  : { renderer: useCanvasKitIfEmptyRenderer ? "canvaskit" : "skwasm" };
_flutter.loader.load({
  config: userConfig,
});
