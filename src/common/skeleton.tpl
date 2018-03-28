<style>
    .skeleton-wrapper img {
        width: 96px;
        height: 96px;
        position: absolute;
        top: 50%;
        left: 50%;
        margin: -48px 0 0 -48px
    }

    .skeleton-wrapper .toplight {
        width: 20px;
        height: 100px;
        position: absolute;
        left: 50%;
        top: 50%;
        margin: -50px 0 0 -10px;
        background-color: hsla(0, 0%, 100%, .5);
        animation: 1s toplight-frame infinite;
        -webkit-animation: 1s toplight-frame infinite
    }

    @keyframes toplight-frame {
        0% {
            transform: skew(-20deg) translateX(-70px)
        }
        to {
            transform: skew(-20deg) translateX(70px)
        }
    }
</style>
<div id="skeleton" class="skeleton-wrapper" style="display:none;">
    <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAHgAAAB4CAMAAAAOusbgAAABI1BMVEUAAAD///////////////////////////////////////////////////////////8BXLklqP8QeNMTaL4OZL204f8SftkAWrcRetYpsv8LbcoAVrQEX7ug2f/3+/5ZldIcbsH6/P4NcMw9g8onrv/t9v3O4vSbwORknNUGZ8Sl2/9Nuf8mqv/Y5vWkxebj9P+P1P8trP/B5v7o8vvc6vcio/et0fB1seYWh+CFsd4ZfdUNc8/Q7P+85P+u4P+Z1/+J0P97yv9wx/9dv/85sf/i7PfE2u/A1+6xzepprugbkehUn+FJmd5/rdx8q9szjNomhdc1fsgwesZFtf++2vMeme+fye6Xw+uOv+qIvOk+lN50ptkkcsM3tv+41/KKtN85itWacUJXAAAAD3RSTlMA+iTqDPXRyZyZiVcI6zJUYMc6AAADDklEQVRo3s3b6VIaQRSG4Rn2RT3MJCKDBBQBjUvc932Lu6IxbjHL/V9FoEj5VdLSEqvPad8beKqZbyx/TDsokk7Gwy4x5YbjyXTEUQslosReNBH6h+1KuSSSm+r667gxEisWgtsTJsHCPU/nlXEh/zlzV4yEi7Wec4rESzXdkEviuc0fO0EWSjhOJEoWikacNFkp7STJSkknTlaKO91kpW7HJSu5DplrfZ06zxy8tuNt0QsxwJM7nueNkjYGeHLba/aBNJmFwcrD1alpzwJc3Wqw8nARrCRc3NwDKgiDFYVHvwCUgcHKw71jwMRgsGqbhIzDG+1Y3r/VM7te+6aKhEzCenZsjZBZeMbTtE3INLzRnt3DPx8McG9bdwdPVxKeVtYsA+9OEhKEp0iJH1ZfIhm48l05rggczB+REj9cCb765V+3pMQMB5Wl/Krv+xc3yjvMCY8H87m836p+VyXECwfBcbnsP7VyD5oFxnGzreOCXpwjxARXguPVsq90VCPEAI8H461VaWgOuPkS5f12nVzzwHiJ2nZ6zQHjJdLRC8bhjeA4X/Zf7mLBMDyzhONqyz3cGIVpbnGlEzabyxfMwGgWtI7tNweDvq9r2GzW/5jp78u8Nwej4l1dw/Y12IxhGPTtxXO/cbbcYhlgtPDw3KNtslww6FOFbYiMMPpxgkdbaB6WG0a1k1wOixKAUXURixKFayWwcvDg8FUfVDF4/3wAkhw8MVKAIwcflIAIwodDIARgLAqAHDyLRUnCE9/eKQYvjEVJwliUHIxFXWaQGFw9w6KEYCxKHh7JvCYD8GvYwrkB+P9/54HlWbIAXw4PEsnDQ58IycGlz0TycGFkgkgOxqL2iURhLEoUxqIkYSxKFsaihGEsShi+wqJkYHVRQrC6KG4Yi6qREj88cDZHSvzw40/Nohhg/aK44dIBaWKDNYtihPWLYoMfl4ukiwXuZFEscOmQOLL2Qai1T2CtffRr7TNnax92W/uU3dbH+9auK9i6oGHrSkrE7iUc+WtH9i9ayV4texuX6eSvD/4G4MB3gdisy/AAAAAASUVORK5CYII=">
    <div class="toplight"></div>
</div>
<script>
    var pathname = window.location.pathname,
        hash = window.location.hash,
        skeletons = [{
            id: "skeleton",
            el: document.querySelector("#skeleton")
        }],
        isMatched = function(e, t) {
            return "hash" === t ? e.test(hash.replace("#", "")) : "history" === t && e.test(pathname)
        },
        showSkeleton = function(e) {
            for (var t = 0; t < skeletons.length; t++) {
                var o = skeletons[t];
                e === o.id ? o.el.style = "display:block;" : o.el.style = "display:none;"
            }
        };
    isMatched(/^.*$/, "history") && showSkeleton("skeleton");
</script>
</div>
